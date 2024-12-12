import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/presentation/back_fab.dart';
import 'package:master_helper/features/home/home.dart';
import 'package:master_helper/features/orders/orders_bloc.dart';
import 'package:master_helper/features/orders/widgets/orders_list.dart';
import 'package:master_helper/generated/l10n.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final bloc = context.read<OrdersBloc>();

    return SafeArea(
      child: Scaffold(
        floatingActionButton: const BackFab(destination: HomeScreen()),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.hasError) {
              return Center(child: Text(localized.errorLoadingDetails));
            } else {
              final searchDisabled = state.searchQuery == null;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 6, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: !searchDisabled
                                ? TextField(
                                    onChanged: (query) {
                                      bloc.add(OrdersEvent.searchQueryChanged(query));
                                    },
                                    decoration: InputDecoration(
                                      hintText: localized.startTypingOrderNumber,
                                      border: const OutlineInputBorder(),
                                    ),
                                  )
                                : Text(
                                    localized.detailsList,
                                    style: Theme.of(context).textTheme.titleMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(searchDisabled ? Icons.search : Icons.close),
                          onPressed: () {
                            bloc.add(OrdersEvent.searchQueryChanged(searchDisabled ? '' : null));
                          },
                          tooltip: localized.searchByOrderNumber,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        OrdersList(
                          details: searchDisabled
                              ? state.details
                              : state.details.where((detail) {
                                  return detail.orderNumber.contains(state.searchQuery!);
                                }).toList(),
                        ),
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
