// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:test_app/core/bottom_nav/bottom_nav.dart' as _i1;
import 'package:test_app/features/exit/page/exit.dart' as _i2;
import 'package:test_app/features/table_service/domain/entities/table_service.dart'
    as _i8;
import 'package:test_app/features/table_service/presentation/pages/order_list.dart'
    as _i3;
import 'package:test_app/features/table_service/presentation/pages/table_details.dart'
    as _i4;
import 'package:test_app/features/table_service/presentation/pages/table_home_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavScreen(),
      );
    },
    ExitRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ExitScreen(),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OrderListScreen(),
      );
    },
    TableDetails.name: (routeData) {
      final args = routeData.argsAs<TableDetailsArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.TableDetails(
          key: args.key,
          tableService: args.tableService,
        ),
      );
    },
    TableServiceHome.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TableServiceHome(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavScreen]
class BottomNavRoute extends _i6.PageRouteInfo<void> {
  const BottomNavRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ExitScreen]
class ExitRoute extends _i6.PageRouteInfo<void> {
  const ExitRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ExitRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExitRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OrderListScreen]
class OrderListRoute extends _i6.PageRouteInfo<void> {
  const OrderListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TableDetails]
class TableDetails extends _i6.PageRouteInfo<TableDetailsArgs> {
  TableDetails({
    _i7.Key? key,
    required _i8.TableService tableService,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          TableDetails.name,
          args: TableDetailsArgs(
            key: key,
            tableService: tableService,
          ),
          initialChildren: children,
        );

  static const String name = 'TableDetails';

  static const _i6.PageInfo<TableDetailsArgs> page =
      _i6.PageInfo<TableDetailsArgs>(name);
}

class TableDetailsArgs {
  const TableDetailsArgs({
    this.key,
    required this.tableService,
  });

  final _i7.Key? key;

  final _i8.TableService tableService;

  @override
  String toString() {
    return 'TableDetailsArgs{key: $key, tableService: $tableService}';
  }
}

/// generated route for
/// [_i5.TableServiceHome]
class TableServiceHome extends _i6.PageRouteInfo<void> {
  const TableServiceHome({List<_i6.PageRouteInfo>? children})
      : super(
          TableServiceHome.name,
          initialChildren: children,
        );

  static const String name = 'TableServiceHome';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
