import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/table_service/domain/entities/menu_items.dart';
import 'package:test_app/features/table_service/presentation/bloc/table_service_bloc.dart';

import '../../data/models/order.dart';
import '../../domain/entities/table_service.dart';
import '../value_notifiers/order_notifier.dart';
import '../widgets/update_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TableDetails extends StatefulWidget {
  const TableDetails({
    super.key,
    required this.tableService,
  });
  final TableService tableService;

  @override
  State<TableDetails> createState() => _TableDetailsState();
}

class _TableDetailsState extends State<TableDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 1, // Set the number of tabs (e.g., 3)
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  MenuItem? selectedMenu;
  List<MenuItemChild> orderList = [];
  final orderListNotifier = OrderListNotifier();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TableServiceBlocBloc, TableServiceBlocState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomSheet: StatefulBuilder(builder: (context, setState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.3,
              maxChildSize: 0.8,
              expand: false,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Container(
                            width: 50.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                selectedMenu != null
                                    ? BackButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedMenu = null;
                                          });
                                        },
                                      )
                                    : const Icon(Icons.list),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  selectedMenu == null
                                      ? "Menu"
                                      : selectedMenu!.title,
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.qr_code_scanner),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Icon(Icons.search)
                              ],
                            )
                          ],
                        ),
                        Expanded(
                            child: selectedMenu == null
                                ? GridView.builder(
                                    itemCount: menuItems.length,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.w),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 5.w,
                                            crossAxisSpacing: 8.w,
                                            childAspectRatio: 3.0),
                                    itemBuilder: (context, index) {
                                      MenuItem item = menuItems[index];
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedMenu = item;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10.r)),
                                          child: Text(
                                            item.title,
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                            ),
                                          ),
                                        ),
                                      );
                                    })
                                : GridView.builder(
                                    itemCount:
                                        selectedMenu!.menuItemChildren!.length,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.w),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 5.w,
                                            crossAxisSpacing: 8.w,
                                            childAspectRatio: 3.0),
                                    itemBuilder: (context, index) {
                                      MenuItemChild item = selectedMenu!
                                          .menuItemChildren![index];
                                      return GestureDetector(
                                        onTap: () {
                                          log(orderListNotifier.value
                                              .toString());
                                          if (orderListNotifier.value
                                              .contains(item)) {
                                            orderListNotifier
                                                .removeItem(item.title);
                                          } else {
                                            orderListNotifier.addItem(item);
                                          }

                                          log("bbutton was tappedd!!!!");
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10.r)),
                                          child: Row(
                                            children: [
                                              Container(
                                                  width: 50.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              item.imgUrl)))),
                                              SizedBox(
                                                width: 85.w,
                                                child: Text(
                                                  item.title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Text(item.amount,
                                                      style: TextStyle(
                                                          fontSize: 7.sp)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }))
                      ],
                    ),
                  ),
                );
              },
            );
          }),
          body: ValueListenableBuilder<List<MenuItemChild>>(
              valueListenable: orderListNotifier,
              builder: (context, orderList, _) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    const UpdateText(),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: BackButton(),
                        ),
                        Expanded(
                          flex: 4,
                          child: Center(
                            child: Text(
                              "${widget.tableService.title}  ${orderListNotifier.totalAmount} \$",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Icon(Icons.menu),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[100]),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              child: TabBar(
                                controller: _tabController,
                                indicatorColor: Colors.blue,
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  Tab(
                                      child: Column(children: [
                                    Text(
                                      "1",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text("${orderListNotifier.totalAmount}",
                                        style: TextStyle(fontSize: 10.sp))
                                  ])),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      List<Order> order = List.from(
                                          orderListNotifier.value.map(
                                              (e) => Order.fromMap(e.toMap())));
                                      context.read<TableServiceBlocBloc>().add(
                                          TableServiceBlocEvent.saveOrders(
                                              order));
                                    },
                                    child: const Icon(Icons.add)),
                                SizedBox(width: 10.w),
                                const Icon(Icons.account_balance),
                                SizedBox(width: 10.w),
                                const Icon(Icons.print),
                                SizedBox(width: 10.w),
                                const Icon(Icons.credit_card),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Divider(color: Colors.grey[300]),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: ValueListenableBuilder<
                                        List<MenuItemChild>>(
                                    valueListenable: orderListNotifier,
                                    builder: (context, orderList, _) {
                                      // orderList.sort((a, b) => a.title
                                      //     .toLowerCase()
                                      //     .compareTo(b.title.toLowerCase()));
                                      var newList = orderList.reversed.toList();
                                      return ListView.builder(
                                          // shrinkWrap: true,
                                          itemCount: orderList.length,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.w),
                                          itemBuilder: (context, index) {
                                            MenuItemChild item = newList[index];
                                            if (index != orderList.length - 1) {
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.0.w),
                                                child: Column(children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text.rich(TextSpan(
                                                          text: "1.0* ",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.blue),
                                                          children: [
                                                            TextSpan(
                                                                text:
                                                                    item.title,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        11.sp,
                                                                    color: Colors
                                                                        .black))
                                                          ])),
                                                      Text(item.amount,
                                                          style: TextStyle(
                                                              fontSize: 11.sp,
                                                              color:
                                                                  Colors.blue))
                                                    ],
                                                  ),
                                                ]),
                                              );
                                            } else {
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.0.w,
                                                    vertical: 10.w),
                                                child: Column(children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text.rich(TextSpan(
                                                          text: "1.0* ",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.blue),
                                                          children: [
                                                            TextSpan(
                                                                text:
                                                                    item.title,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        11.sp,
                                                                    color: Colors
                                                                        .black))
                                                          ])),
                                                      Text("${item.amount}\$",
                                                          style: TextStyle(
                                                              fontSize: 11.sp,
                                                              color:
                                                                  Colors.blue))
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 30.h,
                                                        width: 100.w,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        200]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Text(
                                                            "Sales Tax + % 7.5",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    9.sp)),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 30.h,
                                                        width: 100.w,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Text(
                                                            "SVC + % 4.0",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    9.sp)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Row(
                                                    // mainAxisAlignment:
                                                    // MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0.w),
                                                          child: const Icon(
                                                            Icons.fireplace,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0.w),
                                                          child: const Icon(
                                                            Icons.pause,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0.w),
                                                          child: const Icon(
                                                            Icons.lock_clock,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                        .green[
                                                                    300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0.w),
                                                          child: Text("%",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize:
                                                                      10.sp)),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                        .green[
                                                                    300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      5.0.w,
                                                                  vertical:
                                                                      4.w),
                                                          child: Text("Note",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      10.sp)),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5.w),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0.w),
                                                          child: const Icon(
                                                            Icons
                                                                .delete_outline,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(6.0),
                                                        child: Text("1.0",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    12.sp)),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey[
                                                                        300]!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r)),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0.w),
                                                          child: const Icon(
                                                            Icons.add_outlined,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ]),
                                              );
                                            }
                                            // return Padding(
                                            //   padding: const EdgeInsets.all(8.0),
                                            //   child: Container(
                                            //       height: 50.h,
                                            //       width: 50.w,
                                            //       color: Colors.green,

                                            //       ),
                                            // );
                                          });
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
        );
      },
    );
  }
}
