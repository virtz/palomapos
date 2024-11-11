import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';

import 'package:test_app/core/routes/app_router.gr.dart';
// import 'package:test_app/features/table_service/presentation/pages/order_list.dart';

// import 'package:test_app/features/table_service/table_home_page.dart';

@LazySingleton()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            durationInMilliseconds: 500,
            page: BottomNavRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            children: [
              CustomRoute(
                page: TableServiceHome.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                durationInMilliseconds: 500,
              ),
              CustomRoute(
                page: ExitRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                durationInMilliseconds: 500,
              ),
              CustomRoute(
                page: OrderListRoute.page,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                durationInMilliseconds: 500,
              )
            ]),
        CustomRoute(
            page: TableDetails.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 500),
      ];
}
