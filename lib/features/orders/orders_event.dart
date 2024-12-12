part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.ordersLoaded() = _OrdersLoaded;
  const factory OrdersEvent.searchQueryChanged(String? orderNumber) = _SearchQueryChanged;
}
