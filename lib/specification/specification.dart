import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slasher/add-detail/addDetail.dart';
import 'package:slasher/models/detail.dart';
import 'package:slasher/specification/specification_bloc.dart';

class Specification extends StatefulWidget {
  const Specification({super.key});

  @override
  _SpecificationState createState() => _SpecificationState();
}

class _SpecificationState extends State<Specification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Pop the current page off the navigation stack
        },
        child: const Icon(Icons.arrow_back),
        tooltip: 'Go Back',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<SpecificationBloc, SpecificationState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.hasError) {
                  return const Center(child: Text('Error loading details'));
                } else {
                  return Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 2.0, color: Colors.black), // Right border
                              bottom: BorderSide(width: 2.0, color: Colors.black), // Bottom border
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (state.selectedDetail != null)
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      if (state.selectedDetail!.parentId == null) {
                                        context.read<SpecificationBloc>().add(const SpecificationEvent.loadDetails());
                                      } else {
                                        context
                                            .read<SpecificationBloc>()
                                            .add(SpecificationEvent.selectDetail(state.selectedDetail!.parentId!));
                                      }
                                    },
                                    tooltip: 'Назад',
                                  ),
                                Expanded(
                                  child: Text(
                                    state.selectedDetail == null
                                        ? 'Список деталей'
                                        : '${state.selectedDetail?.orderNumber} ${state.selectedDetail?.name}',
                                    style: const TextStyle(fontSize: 18, color: Colors.black),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                if (state.selectedDetail != null)
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailForm(
                                            detail: state.selectedDetail,
                                          ),
                                        ),
                                      ).then((_) {
                                        context.read<SpecificationBloc>().add(SpecificationEvent.loadDetails());
                                      });
                                    },
                                    tooltip: 'Редактировать',
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(width: 2.0, color: Colors.black), // Right border
                              ),
                            ),
                            child: ListView(
                              children: state.selectedDetail != null
                                  ? state.detailsByMonth.values.expand((details) {
                                      return details.where((detail) => detail.parentId == state.selectedDetail?.id);
                                    }).map((detail) {
                                      return _buildDetailTile(context, detail);
                                    }).toList()
                                  : state.detailsByMonth.entries.map((entry) {
                                      String month = entry.key;
                                      List<Detail> items = entry.value;
                                      List<Detail> filteredItems =
                                          items.where((detail) => detail.parentId == null).toList();
                                      return ExpansionTile(
                                        title: Text(month),
                                        children: filteredItems.map((detail) {
                                          return _buildDetailTile(context, detail);
                                        }).toList(),
                                      );
                                    }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            Expanded(
              flex: 7,
              child: BlocBuilder<SpecificationBloc, SpecificationState>(
                builder: (context, state) {
                  if (state.selectedDetail == null) {
                    return const Center(
                      child: Text(
                        'Выберите деталь для отображения информации о ней',
                        style: TextStyle(fontSize: 24, color: Colors.black45),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                  final selectedDetail = state.selectedDetail!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2.0, color: Colors.black), // Bottom border
                          ),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            '${selectedDetail.orderNumber} ${selectedDetail.name} ${selectedDetail.mainInformation}',
                            style: const TextStyle(fontSize: 24, color: Colors.black),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      DefaultTabController(
                        length: 3,
                        child: Expanded(
                          child: Scaffold(
                            appBar: const TabBar(
                              labelColor: Colors.black45,
                              tabs: [
                                Tab(text: 'Чертёж'),
                                Tab(text: 'Информация'),
                                Tab(text: 'Фото'),
                              ],
                            ),
                            body: TabBarView(
                              children: [
                                _buildTabContent(selectedDetail.drawingImagePath, 'Нет чертежа'),
                                _CommentTab(
                                  initialComment: selectedDetail.comment,
                                  onSave: (comment) {
                                    context
                                        .read<SpecificationBloc>()
                                        .add(SpecificationEvent.updateComment(selectedDetail.id!, comment));
                                  },
                                ),
                                _buildTabContent(selectedDetail.regularImagePath, 'Нет фото'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailTile(BuildContext context, Detail detail) {
    final hasSubdetails = detail.subdetailIds.isNotEmpty;
    final tile = ListTile(
      tileColor: _getBackgroundColor(detail.type),
      title: Text(
        detail.parentId == null ? '${detail.orderNumber} ${detail.name}' : detail.name,
      ),
      onTap: () {
        context.read<SpecificationBloc>().add(SpecificationEvent.selectDetail(detail.id!));
      },
    );

    if (detail.parentId == null) {
      return tile;
    } else if (hasSubdetails) {
      return ExpansionTile(
        title: tile,
        tilePadding: EdgeInsets.all(0),
        initiallyExpanded: true,
        childrenPadding: EdgeInsets.only(left: 12),
        children: detail.subdetailIds.map((subdetailId) {
          final subdetail = context
              .read<SpecificationBloc>()
              .state
              .detailsByMonth
              .values
              .expand((details) => details)
              .firstWhere((d) => d.id == subdetailId);
          return _buildDetailTile(context, subdetail);
        }).toList(),
      );
    } else {
      // If there are no subdetails, return the ListTile
      return tile;
    }
  }

  static Widget _buildTabContent(String? imagePath, String noDataText) {
    if (imagePath == null || imagePath.isEmpty) {
      return Center(
        child: Text(
          noDataText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
    }
    final file = File(imagePath);
    if (!file.existsSync()) {
      return Center(
        child: Text(
          'Image not found',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
    }

    return Expanded(
      child: InteractiveViewer(
        child: Image.file(file),
        minScale: 0.1, // Minimum zoom scale
        maxScale: 4.0, // Maximum zoom scale
      ),
    );
  }
}

class _CommentTab extends StatefulWidget {
  final String? initialComment;
  final void Function(String comment) onSave;

  const _CommentTab({
    Key? key,
    this.initialComment,
    required this.onSave,
  }) : super(key: key);

  @override
  __CommentTabState createState() => __CommentTabState();
}

class __CommentTabState extends State<_CommentTab> {
  late TextEditingController _commentController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController(text: widget.initialComment);
  }

  @override
  void didUpdateWidget(covariant _CommentTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialComment != oldWidget.initialComment) {
      _commentController.text = widget.initialComment ?? '';
    }
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _saveComment() {
    widget.onSave(_commentController.text);
    setState(() {
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _isEditing
              ? TextField(
                  controller: _commentController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    hintText: 'Впишите информацию о детали',
                    border: OutlineInputBorder(),
                  ),
                )
              : Text(
                  _commentController.text.isEmpty ? 'Нет информации о детали' : _commentController.text,
                  style: const TextStyle(fontSize: 18, color: Colors.black87),
                ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _isEditing
                  ? ElevatedButton(
                      onPressed: _saveComment,
                      child: const Text('Сохранить'),
                    )
                  : ElevatedButton(
                      onPressed: () => setState(() {
                        _isEditing = true;
                      }),
                      child: const Text('Изменить'),
                    ),
              if (_isEditing) const SizedBox(width: 8.0),
              if (_isEditing)
                ElevatedButton(
                  onPressed: () {
                    _commentController.clear();
                    setState(() {
                      _isEditing = false;
                    });
                  },
                  child: const Text('Отмена'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

Color _getBackgroundColor(DetailType type) {
  switch (type) {
    case DetailType.circle:
      return const Color.fromARGB(60, 177, 78, 132);
    case DetailType.casting:
      return const Color.fromARGB(60, 227, 158, 33);
    case DetailType.cutting:
      return const Color.fromARGB(60, 0, 136, 123);
    case DetailType.rubber:
      return const Color.fromARGB(60, 110, 57, 217);
    default:
      return Colors.transparent;
  }
}
