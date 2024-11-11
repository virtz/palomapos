import 'package:injectable/injectable.dart' as ij;
import 'package:test_app/features/table_service/data/datasources/order_db.dart';

import '../../domain/entities/menu_items.dart';
import '../../domain/entities/table_service.dart';
import '../models/order.dart';

abstract interface class TableServiceLocalDataSource {
  uploadTableService({required List<TableService> tables});
  Future<List<TableService>> loadTables();
  saveTableOrder({required List<MenuItemChild> orderList});
  Future<List<Order>> listOrders();
}

@ij.LazySingleton(as: TableServiceLocalDataSource)
class TableServiceLocalDataSourceImpl implements TableServiceLocalDataSource {
  final OrderDatabase db;

  TableServiceLocalDataSourceImpl({required this.db});
  @override
  Future<List<Order>> listOrders() async {
    return await db.readAll();
  }

  @override
  Future<List<TableService>> loadTables() {
    // TODO: implement loadTables
    throw UnimplementedError();
  }

  @override
  saveTableOrder({required List<MenuItemChild> orderList}) {
    try {
      for (var menuItem in orderList) {
        Order order = Order.fromMap(menuItem.toMap());
        final result = db.create(order: order);
        return result;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  uploadTableService({required List<TableService> tables}) {
    // TODO: implement uploadTableService
    throw UnimplementedError();
  }
}
