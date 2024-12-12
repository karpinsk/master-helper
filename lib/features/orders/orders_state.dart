part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    required List<Detail> details,
    required bool isLoading,
    String? searchQuery,
    required bool hasError,
  }) = _SpecificationState;

  factory OrdersState.initial() {
    return const OrdersState(
      details: [],
      isLoading: false,
      searchQuery: null,
      hasError: false,
    );
  }
}
