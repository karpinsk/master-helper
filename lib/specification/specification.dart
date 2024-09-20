import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slasher/add_detail/detail_form_view.dart';
import 'package:slasher/models/detail.dart';
import 'package:slasher/specification/specification_bloc.dart';
import 'package:slasher/specification/widgets/comment_field.dart';
import 'package:slasher/specification/widgets/detail_tile.dart';
import 'package:slasher/specification/widgets/image_field.dart';

class Specification extends StatefulWidget {
  const Specification({super.key});

  @override
  State<Specification> createState() => _SpecificationState();
}

class _SpecificationState extends State<Specification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'Назад',
          child: const Icon(Icons.arrow_back),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Row(
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
                    flex: 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 2.0, color: Colors.black),
                              bottom: BorderSide(width: 2.0, color: Colors.black),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (state.selectedDetail != null)
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      if (state.selectedDetail!.parentId == null) {
                                        context.read<SpecificationBloc>().add(const SpecificationEvent.detailsLoaded());
                                      } else {
                                        context
                                            .read<SpecificationBloc>()
                                            .add(SpecificationEvent.detailSelected(state.selectedDetail!.parentId!));
                                      }
                                    },
                                    tooltip: 'Назад',
                                  ),
                                Expanded(
                                  child: Padding(
                                    padding: state.selectedDetail == null
                                        ? const EdgeInsets.only(left: 12.0)
                                        : EdgeInsets.zero,
                                    child: Text(
                                      state.selectedDetail == null
                                          ? 'Список деталей'
                                          : '${state.selectedDetail?.orderNumber} ${state.selectedDetail?.name}',
                                      style: const TextStyle(fontSize: 16, color: Colors.black),
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
                                        context.read<SpecificationBloc>().add(const SpecificationEvent.detailsLoaded());
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
                                right: BorderSide(width: 2.0, color: Colors.black),
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
              flex: 5,
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
                        decoration: const BoxDecoration(
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
                              unselectedLabelColor: Colors.black26,
                              tabs: [
                                Tab(text: 'Чертёж'),
                                Tab(text: 'Заметки'),
                                Tab(text: 'Фото'),
                              ],
                            ),
                            body: TabBarView(
                              children: [
                                ImageField(imagePath: selectedDetail.drawingImagePath),
                                CommentField(
                                  initialComment: selectedDetail.comment,
                                  onSave: (comment) {
                                    context
                                        .read<SpecificationBloc>()
                                        .add(SpecificationEvent.commentUpdated(selectedDetail.id!, comment));
                                  },
                                ),
                                ImageField(imagePath: selectedDetail.regularImagePath),
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
    final tileHeader = DetailTile(
      onTap: () => context.read<SpecificationBloc>().add(SpecificationEvent.detailSelected(detail.id!)),
      detail: detail,
    );

    if (detail.parentId != null && detail.subDetailIds.isNotEmpty) {
      return ExpansionTile(
        title: tileHeader,
        tilePadding: const EdgeInsets.all(0),
        initiallyExpanded: true,
        childrenPadding: const EdgeInsets.only(left: 12),
        children: detail.subDetailIds.map((subDetailId) {
          final subDetail = context
              .read<SpecificationBloc>()
              .state
              .detailsByMonth
              .values
              .expand((details) => details)
              .firstWhere((d) => d.id == subDetailId);
          return _buildDetailTile(context, subDetail);
        }).toList(),
      );
    } else {
      return tileHeader;
    }
  }
}
