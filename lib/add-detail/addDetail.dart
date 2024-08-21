import 'dart:convert'; // Import for JSON encoding
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:slasher/database/database_helper.dart';
import 'package:slasher/models/detail.dart';

class DetailForm extends StatefulWidget {
  final Detail? detail; // Pass a detail to edit it, otherwise create a new one

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

  // Controllers and variables for subdetails
  final List<TextEditingController> _subdetailNameControllers = [];
  final List<TextEditingController> _subdetailQuantityControllers = [];
  final List<TextEditingController> _subdetailMainInfoController = [];
  final List<String?> _subdetailDrawingImagePaths = [];
  final List<String?> _subdetailRegularImagePaths = [];
  final List<DetailType> _subdetailTypes = [];
  final List<int> _subdetailIds = []; // List to store IDs of subdetails

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

      if (detail.subdetailIds.isNotEmpty) {
        for (var id in detail.subdetailIds) {
          _loadSubdetail(id);
        }
      }
    }
  }

  Future<void> _loadSubdetail(int id) async {
    final dbHelper = DatabaseHelper.instance;
    final subdetail = await dbHelper.readDetail(id);

    if (subdetail != null) {
      setState(() {
        _subdetailNameControllers.add(TextEditingController(text: subdetail.name));
        _subdetailQuantityControllers.add(TextEditingController(text: subdetail.quantity.toString()));
        _subdetailMainInfoController.add(TextEditingController(text: subdetail.mainInformation.toString()));
        _subdetailDrawingImagePaths.add(subdetail.drawingImagePath);
        _subdetailRegularImagePaths.add(subdetail.regularImagePath);
        _subdetailTypes.add(subdetail.type);
        _subdetailIds.add(subdetail.id!);
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
            _subdetailDrawingImagePaths[index] = pickedFile.path;
          } else {
            _subdetailRegularImagePaths[index] = pickedFile.path;
          }
        }
      });
    }
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

  void _addSubdetailFields() {
    setState(() {
      _subdetailNameControllers.add(TextEditingController());
      _subdetailQuantityControllers.add(TextEditingController());
      _subdetailMainInfoController.add(TextEditingController());
      _subdetailDrawingImagePaths.add(null);
      _subdetailRegularImagePaths.add(null);
      _subdetailTypes.add(DetailType.circle);
      _subdetailIds.add(-1); // Placeholder for new subdetail IDs
    });
  }

  void _removeSubdetailFields(int index) async {
    final dbHelper = DatabaseHelper.instance;

    // Check if this is an existing subdetail or a new one
    if (_subdetailIds[index] != -1) {
      // Existing subdetails - Delete from the database
      await dbHelper.deleteDetail(_subdetailIds[index]);
    }

    setState(() {
      _subdetailNameControllers.removeAt(index);
      _subdetailQuantityControllers.removeAt(index);
      _subdetailMainInfoController.removeAt(index);
      _subdetailDrawingImagePaths.removeAt(index);
      _subdetailRegularImagePaths.removeAt(index);
      _subdetailTypes.removeAt(index);
      _subdetailIds.removeAt(index);
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final dbHelper = DatabaseHelper.instance;

      // Create or update the parent detail
      final detail = Detail(
        orderNumber: _orderNumberController.text,
        name: _nameController.text,
        quantity: int.parse(_quantityController.text),
        mainInformation: _mainInfoController.text,
        type: _selectedType,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        drawingImagePath: _drawingImagePath,
        regularImagePath: _regularImagePath,
        subdetailIds: _subdetailIds.isEmpty
            ? []
            : _subdetailIds, // Ensure subdetailIds is an empty list if no subdetails are provided
      );

      int detailId;
      int? parentId;
      if (widget.detail == null) {
        // Create a new detail
        detailId = await dbHelper.createDetail(detail);
      } else {
        // Update existing detail
        detailId = widget.detail!.id!;
        parentId = widget.detail!.parentId;
        await dbHelper.updateDetail(detail.copyWith(id: detailId, parentId: parentId));
      }

      final List<int> updatedSubdetailIds = [];

      for (int i = 0; i < _subdetailNameControllers.length; i++) {
        final subdetail = Detail(
          orderNumber: _orderNumberController.text,
          name: _subdetailNameControllers[i].text,
          quantity: int.parse(_subdetailQuantityControllers[i].text),
          mainInformation: _subdetailMainInfoController[i].text,
          type: _subdetailTypes[i],
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          drawingImagePath: _subdetailDrawingImagePaths[i],
          regularImagePath: _subdetailRegularImagePaths[i],
          parentId: detailId,
        );

        int subdetailId;
        if (_subdetailIds[i] == -1) {
          // New subdetail
          subdetailId = await dbHelper.createDetail(subdetail);
          updatedSubdetailIds.add(subdetailId);
        } else {
          // Existing subdetail
          subdetailId = _subdetailIds[i];
          await dbHelper.updateDetail(subdetail.copyWith(id: subdetailId));
          updatedSubdetailIds.add(subdetailId); // Ensure existing IDs are preserved
        }
      }

      // Update the parent detail with the final list of subdetail IDs
      await dbHelper.updateDetail(detail.copyWith(
          id: detailId, subdetailIds: updatedSubdetailIds.isEmpty ? [] : updatedSubdetailIds, parentId: parentId));

      await dbHelper.getDetails();

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.detail == null ? 'Добавить деталь' : 'Редактировать деталь'),
      ),
      body: Column(
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
                            setState(() {}); // Trigger a rebuild to update the expansion tile
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
                              child: Text(getDetailTypeName(type)),
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
                                  borderRadius: BorderRadius.circular(3), // Set border radius to 3
                                ),
                                minimumSize: Size.fromHeight(60),
                                side: BorderSide(
                                  color: Theme.of(context).primaryColor, // Border color
                                  width: 1.5, // Border width (adjust if needed)
                                ),
                              ),
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
                          for (int i = 0; i < _subdetailNameControllers.length; i++)
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
                                        controller: _subdetailNameControllers[i],
                                        decoration: InputDecoration(
                                          labelText: 'Поддеталь ${i + 1}',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
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
                                        controller: _subdetailMainInfoController[i],
                                        decoration: InputDecoration(
                                          labelText: 'Информация о поддетали ${i + 1}',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                      child: TextFormField(
                                        controller: _subdetailQuantityControllers[i],
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
                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                      child: DropdownButtonFormField<DetailType>(
                                        value: _subdetailTypes[i],
                                        decoration: InputDecoration(
                                          labelText: 'Тип поддетали ${i + 1}',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                        ),
                                        items: DetailType.values.map((DetailType type) {
                                          return DropdownMenuItem<DetailType>(
                                            value: type,
                                            child: Text(getDetailTypeName(type)),
                                          );
                                        }).toList(),
                                        onChanged: (DetailType? newValue) {
                                          setState(() {
                                            _subdetailTypes[i] = newValue!;
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
                                              _subdetailDrawingImagePaths[i] == null
                                                  ? Icons.add_a_photo
                                                  : Icons.published_with_changes,
                                            ),
                                            label: Text(
                                              _subdetailDrawingImagePaths[i] == null
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
                                              _subdetailRegularImagePaths[i] == null
                                                  ? Icons.add_photo_alternate
                                                  : Icons.published_with_changes,
                                            ),
                                            label: Text(
                                              _subdetailRegularImagePaths[i] == null
                                                  ? 'Добавить фото'
                                                  : 'Заменить фото',
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(3), // Set border radius to 3
                                              ),
                                              minimumSize: Size.fromHeight(50),
                                              side: BorderSide(
                                                color: Theme.of(context).primaryColor, // Border color
                                                width: 1.5, // Border width (adjust if needed)
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(3), // Set border radius to 3
                                              ),
                                              backgroundColor: const Color.fromARGB(255, 215, 152, 147),
                                              minimumSize: Size.fromHeight(50),
                                              side: BorderSide(
                                                color: Theme.of(context).primaryColor, // Border color
                                                width: 1.5, // Border width (adjust if needed)
                                              ),
                                            ),
                                            onPressed: () => _removeSubdetailFields(i),
                                            icon: const Icon(Icons.delete),
                                            label: Text('Удалить поддеталь ${i + 1}'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_subdetailDrawingImagePaths[i] != null)
                                      Center(child: Text('Чертёж поддетали ${i + 1} успешно добавлен!')),
                                    if (_subdetailRegularImagePaths[i] != null)
                                      Center(child: Text('Фото поддетали ${i + 1} успешно добавлено!')),
                                  ],
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity, // Ensures the container takes the full width
                              child: ElevatedButton.icon(
                                onPressed: _addSubdetailFields,
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
                  borderRadius: BorderRadius.circular(3), // Set border radius to 3
                ),
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(
                  color: Theme.of(context).primaryColor, // Border color
                  width: 1.5, // Border width (adjust if needed)
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
    );
  }
}

String getDetailTypeName(DetailType type) {
  switch (type) {
    case DetailType.circle:
      return 'круг';
    case DetailType.cutting:
      return 'порезка';
    case DetailType.casting:
      return 'литьё';
    case DetailType.rubber:
      return 'РТИ (резина)';
    default:
      return '---';
  }
}
