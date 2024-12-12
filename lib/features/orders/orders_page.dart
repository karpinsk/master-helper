import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/features/orders/orders_bloc.dart';
import 'package:master_helper/features/orders/orders_view.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OrdersBloc()..add(const OrdersEvent.ordersLoaded()),
      child: const OrdersView(),
    );
  }
}
