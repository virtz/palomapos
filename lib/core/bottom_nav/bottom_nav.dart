import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/routes/app_router.gr.dart';

import 'widget/custom_bottom_nav_item.dart';

@RoutePage()
class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<PageRouteInfo<dynamic>> bottomNavTabs = [
    const ExitRoute(), const OrderListRoute(),
    const TableServiceHome(), const TableServiceHome()
    // const HomeRoute(),
    // const FeedRoute(),
    // const GroupRoute(),
    // const ChatHomeRoute(),
    // const UserProfileRoute()
  ];

  @override
  void initState() {
    // getIt<GroupViewModel>().manageGroupCreation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsScaffold(
        routes: bottomNavTabs,
        bottomNavigationBuilder: (context, tabsRouter) => Padding(
          padding: EdgeInsets.only(
            left: 10.0.w,
            right: 10.w,
            bottom: 10.w,
          ),
          child: SizedBox(
              // color: Colors.green,
              height: 60.h,
              // width: size.width - 200.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomBottomNavItem(
                        icon: "assets/images/pngs/exist_icon.png",
                        iconActive: "assets/images/pngs/exist_icon.png",
                        isSelected: tabsRouter.activeIndex == 0,
                        title: "Exit",
                        onTap: () {
                          setState(() {
                            // model.returnSpecificRoute(index: 2);
                            // model.setCurrentIndex = 4;
                            // redrawObbject = Object();
                            tabsRouter.setActiveIndex(0);
                          });
                          // model.removeAndAddRoute(3);
                        }),
                  ),
                  Expanded(
                    child: CustomBottomNavItem(
                        icon: "assets/images/pngs/order_list_icon.png",
                        iconActive: "assets/images/pngs/order_list_icon.png",
                        title: "Order list",
                        isSelected: tabsRouter.activeIndex == 1,
                        onTap: () {
                          tabsRouter.setActiveIndex(1);
                        }),
                  ),
                  Expanded(
                    child: CustomBottomNavItem(
                        icon: "assets/images/pngs/to_go_icon.png",
                        iconActive: "assets/images/pngs/to_go_icon.png",
                        isSelected: tabsRouter.activeIndex == 2,
                        title: "To Go",
                        onTap: () {
                          tabsRouter.setActiveIndex(2);
                          // model.removeAndAddRoute(0);
                        }),
                  ),
                  Expanded(
                    child: CustomBottomNavItem(
                        icon: "assets/images/pngs/quick_order_icon.png",
                        iconActive: "assets/images/pngs/quick_order_icon.png",
                        title: "Quick Order",
                        isSelected: tabsRouter.activeIndex == 3,
                        onTap: () {
                          tabsRouter.setActiveIndex(3);
                          // model.removeAndAddRoute(0);
                        }),
                  ),
                ],
              )
              // width: size.width * 0.2,
              ),
        ),
      ),
    );
  }
}
