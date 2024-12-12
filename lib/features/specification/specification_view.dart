import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:master_helper/core/presentation/back_fab.dart';
import 'package:master_helper/features/detail_form/detail_form_page.dart';
import 'package:master_helper/features/home/home.dart';
import 'package:master_helper/features/orders/orders_page.dart';
import 'package:master_helper/generated/l10n.dart';
import 'package:master_helper/features/specification/specification_bloc.dart';
import 'package:master_helper/features/specification/widgets/information_field.dart';
import 'package:master_helper/features/specification/widgets/details_list.dart';
import 'package:master_helper/features/specification/widgets/image_field.dart';

class SpecificationView extends StatelessWidget {
  const SpecificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<SpecificationBloc>();

    return SafeArea(
      child: Scaffold(
        floatingActionButton: const BackFab(destination: HomeScreen()),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: BlocBuilder<SpecificationBloc, SpecificationState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.hasError) {
              return Center(child: Text(localized.errorLoadingDetails));
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () {
                                  if (state.selectedDetail!.parentId == null) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const OrdersPage(),
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
                                  padding: EdgeInsets.zero,
                                  child: Text(
                                    '${state.selectedDetail?.orderNumber} ${state.selectedDetail?.name}',
                                    style: Theme.of(context).textTheme.titleMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
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
                            ],
                          ),
                        ),
                        const Divider(),
                        Expanded(
                          child: ListView(shrinkWrap: true, children: [
                            DetailsList(details: state.details, selectedDetailId: state.selectedDetail!.id!)
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 1),
                  Expanded(
                    flex: 13,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _DetailHeader(selectedDetail: state.selectedDetail!),
                        const Divider(),
                        _DetailMainView(selectedDetail: state.selectedDetail!),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({
    required this.selectedDetail,
  });

  final Detail selectedDetail;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 50),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            '${selectedDetail.orderNumber} ${selectedDetail.name} ${selectedDetail.info ?? ''}',
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.clip,
          ),
        ),
      ),
    );
  }
}

class _DetailMainView extends StatelessWidget {
  const _DetailMainView({
    required this.selectedDetail,
  });

  final Detail selectedDetail;

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<SpecificationBloc>();
    return DefaultTabController(
      length: 4,
      child: Expanded(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Builder(
              builder: (context) {
                final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
                return TabBar(
                  tabAlignment: isPortrait ? TabAlignment.start : TabAlignment.fill,
                  isScrollable: isPortrait,
                  tabs: [
                    Tab(text: localized.drawing),
                    Tab(text: localized.notes),
                    Tab(text: localized.techProcess),
                    Tab(text: localized.photo),
                  ],
                );
              },
            ),
          ),
          body: TabBarView(
            children: [
              ImageField(
                  imagePath: selectedDetail.drawingPath, drawingExpirationDate: selectedDetail.drawingExpirationDate),
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
    );
  }
}
