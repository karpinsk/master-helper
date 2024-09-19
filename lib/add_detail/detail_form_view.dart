import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:slasher/database/database_manager.dart';
import 'package:slasher/models/detail.dart';
import 'package:slasher/models/detail_type.dart';
import 'package:slasher/specification/specification_bloc.dart';

class DetailForm extends StatefulWidget {
  final Detail? detail;
  const DetailForm({Key? key, this.detail}) : super(key: key);

  @override
  _DetailFormState createState() => _DetailFormState();
}

class _DetailFormState extends State<DetailForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _orderNumberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _mainInfoController = TextEditingController();

  String? _drawingImagePath;
  String? _regularImagePath;
  DetailType _selectedType = DetailType.circle;

  final List<TextEditingController> _subDetailNameControllers = [];
  final List<TextEditingController> _subDetailQuantityControllers = [];
  final List<TextEditingController> _subDetailMainInfoController = [];
  final List<TextEditingController> _subDetailCommentController = [];
  final List<String?> _subDetailDrawingImagePaths = [];
  final List<String?> _subDetailRegularImagePaths = [];
  final List<DetailType> _subDetailTypes = [];
  final List<int> _subDetailIds = [];

  @override
  void initState() {
    super.initState();

    if (widget.detail != null) {
      final detail = widget.detail!;
      _orderNumberController.text = detail.orderNumber;
      _nameController.text = detail.name;
      _quantityController.text = detail.quantity.toString();
      _mainInfoController.text = detail.mainInformation.toString();
      _selectedType = detail.type;
      _drawingImagePath = detail.drawingImagePath;
      _regularImagePath = detail.regularImagePath;

      if (detail.subDetailIds.isNotEmpty) {
        for (var id in detail.subDetailIds) {
          _loadSubDetail(id);
        }
      }
    }
  }

  Future<void> _loadSubDetail(int id) async {
    final dbHelper = DatabaseManager.instance;
    final subDetail = await dbHelper.readDetail(id);

    if (subDetail != null) {
      setState(() {
        _subDetailNameControllers.add(TextEditingController(text: subDetail.name));
        _subDetailCommentController.add(TextEditingController(text: subDetail.comment.toString()));
        _subDetailQuantityControllers.add(TextEditingController(text: subDetail.quantity.toString()));
        _subDetailMainInfoController.add(TextEditingController(text: subDetail.mainInformation.toString()));
        _subDetailDrawingImagePaths.add(subDetail.drawingImagePath);
        _subDetailRegularImagePaths.add(subDetail.regularImagePath);
        _subDetailTypes.add(subDetail.type);
        _subDetailIds.add(subDetail.id!);
      });
    }
  }

  void _pickImage(int index, bool isDrawing, {required ImageSource source}) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (index == -1) {
          if (isDrawing) {
            _drawingImagePath = pickedFile.path;
          } else {
            _regularImagePath = pickedFile.path;
          }
        } else {
          if (isDrawing) {
            _subDetailDrawingImagePaths[index] = pickedFile.path;
          } else {
            _subDetailRegularImagePaths[index] = pickedFile.path;
          }
        }
      });
    }
  }

  Future<bool> _showDeleteConfirmationDialog(int index) async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Подтверждение удаления'),
              content: const Text('Вы уверены, что хотите удалить эту деталь вместе со всеми поддеталями?'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Отмена'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                TextButton(
                  child: const Text('Удалить'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          },
        ) ??
        false;
  }

  Future<void> _deleteDetailWithSubDetails(int id) async {
    final dbHelper = DatabaseManager.instance;
    await dbHelper.deleteDetail(id);
    context.read<SpecificationBloc>().add(const SpecificationEvent.detailsLoaded());
  }

  void _showImageSourceActionSheet(int index, bool isDrawing) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Галерея'),
                onTap: () {
                  _pickImage(index, isDrawing, source: ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Камера'),
                onTap: () {
                  _pickImage(index, isDrawing, source: ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _addSubDetailFields() {
    setState(() {
      _subDetailNameControllers.add(TextEditingController());
      _subDetailQuantityControllers.add(TextEditingController());
      _subDetailMainInfoController.add(TextEditingController());
      _subDetailCommentController.add(TextEditingController());
      _subDetailDrawingImagePaths.add(null);
      _subDetailRegularImagePaths.add(null);
      _subDetailTypes.add(DetailType.circle);
      _subDetailIds.add(-1);
    });
  }

  void _removeSubDetailFields(int index) async {
    final dbHelper = DatabaseManager.instance;

    if (_subDetailIds[index] != -1) {
      bool hasChildren = await dbHelper.hasSubDetails(_subDetailIds[index]);

      if (hasChildren) {
        bool shouldDelete = await _showDeleteConfirmationDialog(index);

        if (!shouldDelete) {
          return;
        }
      }

      await _deleteDetailWithSubDetails(_subDetailIds[index]);
    }

    setState(() {
      _subDetailCommentController.removeAt(index);
      _subDetailNameControllers.removeAt(index);
      _subDetailQuantityControllers.removeAt(index);
      _subDetailMainInfoController.removeAt(index);
      _subDetailDrawingImagePaths.removeAt(index);
      _subDetailRegularImagePaths.removeAt(index);
      _subDetailTypes.removeAt(index);
      _subDetailIds.removeAt(index);
    });
  }

  Future<void> _handleDeleteDetail(int id) async {
    final shouldDelete = await _showDeleteConfirmationDialog(id);

    if (shouldDelete) {
      await _deleteDetailWithSubDetails(id);
      Navigator.pop(context);
    }
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final dbHelper = DatabaseManager.instance;

      final detail = Detail(
        orderNumber: _orderNumberController.text,
        name: _nameController.text,
        quantity: int.parse(_quantityController.text),
        mainInformation: _mainInfoController.text,
        comment: widget.detail?.comment,
        type: _selectedType,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        drawingImagePath: _drawingImagePath,
        regularImagePath: _regularImagePath,
        subDetailIds: _subDetailIds.isEmpty ? [] : _subDetailIds,
      );

      int detailId;
      int? parentId;
      if (widget.detail == null) {
        detailId = await dbHelper.createDetail(detail);
      } else {
        detailId = widget.detail!.id!;
        parentId = widget.detail!.parentId;
        await dbHelper.updateDetail(detail.copyWith(id: detailId, parentId: parentId));
      }

      final List<int> updatedsubDetailIds = [];

      for (int i = 0; i < _subDetailNameControllers.length; i++) {
        final subDetail = Detail(
          orderNumber: _orderNumberController.text,
          name: _subDetailNameControllers[i].text,
          quantity: int.parse(_subDetailQuantityControllers[i].text),
          mainInformation: _subDetailMainInfoController[i].text,
          comment: _subDetailCommentController[i].text,
          type: _subDetailTypes[i],
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          drawingImagePath: _subDetailDrawingImagePaths[i],
          regularImagePath: _subDetailRegularImagePaths[i],
          parentId: detailId,
        );

        int subDetailId;
        if (_subDetailIds[i] == -1) {
          subDetailId = await dbHelper.createDetail(subDetail);
          updatedsubDetailIds.add(subDetailId);
        } else {
          subDetailId = _subDetailIds[i];
          await dbHelper.updateDetail(subDetail.copyWith(id: subDetailId));
          updatedsubDetailIds.add(subDetailId);
        }
      }

      await dbHelper.updateDetail(detail.copyWith(
          id: detailId, subDetailIds: updatedsubDetailIds.isEmpty ? [] : updatedsubDetailIds, parentId: parentId));

      context.read<SpecificationBloc>().add(const SpecificationEvent.detailsLoaded());

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.detail == null ? 'Добавить деталь' : 'Редактировать деталь'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        if (widget.detail?.parentId == null) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: TextFormField(
                              controller: _orderNumberController,
                              decoration: InputDecoration(
                                labelText: 'Номер заказа',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Введите номер заказа';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: 'Наименование детали',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введите наименование детали';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            controller: _mainInfoController,
                            decoration: InputDecoration(
                              labelText: 'Информация',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            controller: _quantityController,
                            decoration: InputDecoration(
                              labelText: 'Количество единиц',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введите количество';
                              } else if (int.tryParse(value) == null) {
                                return 'Введите корректное количество';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: DropdownButtonFormField<DetailType>(
                            value: _selectedType,
                            decoration: InputDecoration(
                              labelText: 'Тип детали',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                            ),
                            alignment: AlignmentDirectional.centerStart,
                            items: DetailType.values.map((DetailType type) {
                              return DropdownMenuItem<DetailType>(
                                value: type,
                                child: Text(type.getDetailTypeName(type)),
                              );
                            }).toList(),
                            onChanged: (DetailType? newValue) {
                              setState(() {
                                _selectedType = newValue!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () => _showImageSourceActionSheet(-1, true),
                                icon: Icon(
                                  _drawingImagePath == null ? Icons.add_a_photo : Icons.published_with_changes,
                                ),
                                label: Text(
                                  _drawingImagePath == null ? 'Добавить чертёж' : 'Заменить чертёж',
                                  style: TextStyle(color: Theme.of(context).primaryColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  side: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () => _showImageSourceActionSheet(-1, false),
                                icon: Icon(
                                  _regularImagePath == null ? Icons.add_photo_alternate : Icons.published_with_changes,
                                ),
                                label: Text(
                                  _regularImagePath == null ? 'Добавить фото' : 'Заменить фото',
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  minimumSize: Size.fromHeight(60),
                                  side: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            if (widget.detail != null)
                              Expanded(
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    backgroundColor: const Color.fromARGB(255, 215, 152, 147),
                                    minimumSize: Size.fromHeight(60),
                                    side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  onPressed: () => _handleDeleteDetail(widget.detail!.id!),
                                  icon: const Icon(Icons.delete),
                                  label: const Text('Удалить деталь'),
                                ),
                              ),
                          ],
                        ),
                        if (_drawingImagePath != null) Text('Чертёж детали успешно добавлен!'),
                        if (_regularImagePath != null) Text('Фото детали успешно добавлено!'),
                        const SizedBox(height: 16),
                        ExpansionTile(
                          title: Text('Компоненты детали ${_nameController.text}'),
                          backgroundColor: Color(0xFFF5F5F5),
                          initiallyExpanded: _nameController.text.isNotEmpty,
                          children: [
                            for (int i = 0; i < _subDetailNameControllers.length; i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12.0),
                                child: ColoredBox(
                                  color: i % 2 == 0
                                      ? const Color.fromARGB(255, 207, 230, 241)
                                      : const Color.fromARGB(255, 246, 239, 239),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextFormField(
                                          controller: _subDetailNameControllers[i],
                                          decoration: InputDecoration(
                                            labelText: 'Поддеталь ${i + 1}',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                          ),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Введите название поддетали';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextFormField(
                                          controller: _subDetailMainInfoController[i],
                                          decoration: InputDecoration(
                                            labelText: 'Информация о поддетали ${i + 1}',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: TextFormField(
                                          controller: _subDetailQuantityControllers[i],
                                          decoration: InputDecoration(
                                            labelText: 'Количество единиц',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                          ),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Введите количество';
                                            } else if (int.tryParse(value) == null) {
                                              return 'Введите корректное количество';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: DropdownButtonFormField<DetailType>(
                                          value: _subDetailTypes[i],
                                          decoration: InputDecoration(
                                            labelText: 'Тип поддетали ${i + 1}',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                          ),
                                          items: DetailType.values.map((DetailType type) {
                                            return DropdownMenuItem<DetailType>(
                                              value: type,
                                              child: Text(type.getDetailTypeName(type)),
                                            );
                                          }).toList(),
                                          onChanged: (DetailType? newValue) {
                                            setState(() {
                                              _subDetailTypes[i] = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: ElevatedButton.icon(
                                              onPressed: () => _showImageSourceActionSheet(i, true),
                                              icon: Icon(
                                                _subDetailDrawingImagePaths[i] == null
                                                    ? Icons.add_a_photo
                                                    : Icons.published_with_changes,
                                              ),
                                              label: Text(
                                                _subDetailDrawingImagePaths[i] == null
                                                    ? 'Добавить чертёж'
                                                    : 'Заменить чертёж',
                                                style: TextStyle(color: Theme.of(context).primaryColor),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size.fromHeight(50),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(3),
                                                ),
                                                side: BorderSide(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: ElevatedButton.icon(
                                              onPressed: () => _showImageSourceActionSheet(i, false),
                                              icon: Icon(
                                                _subDetailRegularImagePaths[i] == null
                                                    ? Icons.add_photo_alternate
                                                    : Icons.published_with_changes,
                                              ),
                                              label: Text(
                                                _subDetailRegularImagePaths[i] == null
                                                    ? 'Добавить фото'
                                                    : 'Заменить фото',
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(3),
                                                ),
                                                minimumSize: Size.fromHeight(50),
                                                side: BorderSide(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(3),
                                                ),
                                                backgroundColor: const Color.fromARGB(255, 215, 152, 147),
                                                minimumSize: Size.fromHeight(50),
                                                side: BorderSide(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 1.5,
                                                ),
                                              ),
                                              onPressed: () => _removeSubDetailFields(i),
                                              icon: const Icon(Icons.delete),
                                              label: Text('Удалить поддеталь ${i + 1}'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (_subDetailDrawingImagePaths[i] != null)
                                        Center(child: Text('Чертёж поддетали ${i + 1} успешно добавлен!')),
                                      if (_subDetailRegularImagePaths[i] != null)
                                        Center(child: Text('Фото поддетали ${i + 1} успешно добавлено!')),
                                    ],
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: _addSubDetailFields,
                                  icon: const Icon(Icons.add),
                                  label: Text('Добавить новую поддеталь'),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size.fromHeight(60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  minimumSize: Size.fromHeight(50),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 1.5,
                  ),
                ),
                onPressed: _submitForm,
                child: const Text(
                  'Сохранить',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
