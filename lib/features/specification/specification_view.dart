import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/features/detail_form/detail_form_page.dart';
import 'package:master_helper/features/home/home.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/specification/specification_bloc.dart';
import 'package:master_helper/features/specification/specification_page.dart';
import 'package:master_helper/features/specification/widgets/information_field.dart';
import 'package:master_helper/features/specification/widgets/details_list.dart';
import 'package:master_helper/features/specification/widgets/details_by_months_list.dart';
import 'package:master_helper/features/specification/widgets/image_field.dart';

class SpecificationView extends StatelessWidget {
  const SpecificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<SpecificationBloc>();

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
            bloc.add(const SpecificationEvent.searchQueryChanged(null));
          },
          tooltip: localized.back,
          child: const Icon(Icons.arrow_back),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<SpecificationBloc, SpecificationState>(
              builder: (context, state) {
                final searchDisabled = state.searchQuery == null;
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.hasError) {
                  return Center(child: Text(localized.errorLoadingDetails));
                } else {
                  return Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: const BorderSide(width: 2.0),
                              right: state.selectedDetail != null ? const BorderSide(width: 2.0) : BorderSide.none,
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
                                        bloc.add(const SpecificationEvent.searchQueryChanged(null));
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const SpecificationPage(),
                                          ),
                                        );
                                      } else {
                                        bloc.add(SpecificationEvent.detailSelected(state.selectedDetail!.parentId!));
                                      }
                                    },
                                    tooltip: localized.back,
                                  ),
                                Expanded(
                                  child: Padding(
                                    padding: state.selectedDetail == null
                                        ? const EdgeInsets.only(left: 12.0)
                                        : EdgeInsets.zero,
                                    child: state.selectedDetail == null && !searchDisabled
                                        ? TextField(
                                            onChanged: (query) {
                                              bloc.add(SpecificationEvent.searchQueryChanged(query));
                                            },
                                            decoration: InputDecoration(
                                              hintText: localized.startTypingOrderNumber,
                                              border: const OutlineInputBorder(),
                                            ),
                                          )
                                        : Text(
                                            state.selectedDetail == null
                                                ? localized.detailsList
                                                : '${state.selectedDetail?.orderNumber} ${state.selectedDetail?.name}',
                                            style: const TextStyle(fontSize: 16),
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
                                          builder: (context) => DetailFormPage(detailId: state.selectedDetail!.id),
                                        ),
                                      );
                                    },
                                    tooltip: localized.edit,
                                  )
                                else
                                  IconButton(
                                    icon: Icon(searchDisabled ? Icons.search : Icons.close),
                                    onPressed: () {
                                      bloc.add(SpecificationEvent.searchQueryChanged(searchDisabled ? '' : null));
                                    },
                                    tooltip: localized.searchByOrderNumber,
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: state.selectedDetail != null ? const BorderSide(width: 2.0) : BorderSide.none,
                              ),
                            ),
                            child: ListView(
                              children: state.selectedDetail != null
                                  ? [
                                      DetailsList(
                                          subDetails: state.details, selectedDetailId: state.selectedDetail!.id!)
                                    ]
                                  : [
                                      DetailsByMonthsList(
                                          details: searchDisabled
                                              ? state.details
                                              : state.details.where((detail) {
                                                  return detail.orderNumber.contains(state.searchQuery!);
                                                }).toList(),
                                          context: context)
                                    ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            BlocBuilder<SpecificationBloc, SpecificationState>(
              builder: (context, state) {
                if (state.selectedDetail == null) {
                  return const SizedBox.shrink();
                }
                final selectedDetail = state.selectedDetail!;
                return Expanded(
                  flex: 13,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2.0),
                          ),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            '${selectedDetail.orderNumber} ${selectedDetail.name} ${selectedDetail.info}',
                            style: const TextStyle(fontSize: 24),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      DefaultTabController(
                        length: 4,
                        child: Expanded(
                          child: Scaffold(
                            appBar: TabBar(
                              tabs: [
                                Tab(text: localized.drawing),
                                Tab(text: localized.notes),
                                Tab(text: localized.techProcess),
                                Tab(text: localized.photo),
                              ],
                            ),
                            body: TabBarView(
                              children: [
                                ImageField(
                                    imagePath: selectedDetail.drawingPath,
                                    drawingExpirationDate: selectedDetail.drawingExpirationDate),
                                InformationField(
                                  initialValue: selectedDetail.comment,
                                  onSave: (comment) {
                                    bloc.add(SpecificationEvent.commentUpdated(selectedDetail.id!, comment));
                                  },
                                ),
                                InformationField(
                                  initialValue: selectedDetail.techProcess,
                                  onSave: (techProcess) {
                                    bloc.add(SpecificationEvent.techProcessUpdated(selectedDetail.id!, techProcess));
                                  },
                                ),
                                ImageField(imagePath: selectedDetail.photoPath),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
