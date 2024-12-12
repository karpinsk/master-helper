import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_helper/core/database/database_manager.dart';
import 'package:master_helper/core/models/detail.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersState.initial()) {
    on<_OrdersLoaded>(_onOrdersLoaded);
    on<_SearchQueryChanged>(_onSearchQueryChanged);
  }

  Future<void> _onOrdersLoaded(_OrdersLoaded event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      final details = await DatabaseManager.instance.getDetails();
      emit(state.copyWith(
        details: List.of(details),
        isLoading: false,
        hasError: false,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }
  }

  Future<void> _onSearchQueryChanged(_SearchQueryChanged event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(searchQuery: event.orderNumber));
  }
}
