part of 'table_service_bloc.dart';

@freezed
class TableServiceBlocEvent with _$TableServiceBlocEvent {
  const factory TableServiceBlocEvent.loadOrders() = _LoadOrders;
  const factory TableServiceBlocEvent.saveOrders(List<Order> orderList) =
      _SaveOrders;
  const factory TableServiceBlocEvent.addToOrderList(MenuItemChild child) =
      _AddOrderToList;

  const factory TableServiceBlocEvent.removeOrderFromList(MenuItemChild child) =
      _RemoveFromList;
}
