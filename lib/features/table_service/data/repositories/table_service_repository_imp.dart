import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:test_app/core/failures/app_failure.dart';
import 'package:test_app/features/table_service/data/datasources/table_service_local_data_source.dart';

import 'package:test_app/features/table_service/data/models/order.dart' as or;

import 'package:test_app/features/table_service/domain/entities/menu_items.dart';

import '../../domain/repositories/table_service_repository.dart';


@LazySingleton(as: TableServiceRepository)
class TableServiceRepositoryImpl implements TableServiceRepository {
  final TableServiceLocalDataSource tableServiceLocalDataSource;

  TableServiceRepositoryImpl(this.tableServiceLocalDataSource);

  @override
  Future<Either<AppFailure, List<or.Order>>> loadOrders() async {
    try {
      final result = await tableServiceLocalDataSource.listOrders();
      return right(result);
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> createOrders(
      {required List<MenuItemChild> menuItemChild}) async {
    try {
      await tableServiceLocalDataSource.saveTableOrder(
          orderList: menuItemChild);
      return right(unit);
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }
}
