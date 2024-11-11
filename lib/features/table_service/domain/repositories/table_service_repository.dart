import 'package:dartz/dartz.dart';
import 'package:test_app/features/table_service/data/models/order.dart' as or;
import 'package:test_app/features/table_service/domain/entities/menu_items.dart';

import '../../../../core/failures/app_failure.dart';

abstract interface class TableServiceRepository {
  Future<Either<AppFailure, List<or.Order>>> loadOrders();
  Future<Either<AppFailure, Unit>> createOrders(
      {required List<MenuItemChild> menuItemChild});
}
