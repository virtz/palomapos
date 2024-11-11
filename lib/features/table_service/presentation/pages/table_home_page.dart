import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/table_service/presentation/widgets/update_text.dart';

import '../../domain/entities/table_service.dart';
import '../widgets/table_service_card.dart';

@RoutePage()
class TableServiceHome extends StatefulWidget {
  const TableServiceHome({super.key});

  @override
  State<TableServiceHome> createState() => _TableServiceHomeState();
}

class _TableServiceHomeState extends State<TableServiceHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 1, vsync: this); // Initialize TabController with number of tabs
  }

  @override
  void dispose() {
    _tabController
        .dispose(); // Dispose of the TabController when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          const UpdateText(),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: Icon(Icons.menu),
              ),
              Expanded(
                flex: 4,
                child: Center(
                    child: Text("Table Service",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500))),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
          TabBar(
            labelColor: Colors.grey[600],
            labelPadding: EdgeInsets.only(bottom: 10.w, top: 5.w),
            tabs: const [Text("Default Room")],
            controller: _tabController,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.68,
            child: TabBarView(
              controller: _tabController,
              children: [
                //   child:
                GridView.builder(
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.w,
                        crossAxisSpacing: 10.w,
                        childAspectRatio: 1.00),
                    itemCount: tables.length,
                    itemBuilder: (context, index) {
                      TableService table = tables[index];
                      return TableServiceCard(
                        table: table,
                        color: table.status == TableStatus.done
                            ? Colors.green
                            : table.status == TableStatus.stale
                                ? Colors.grey
                                : Colors.red,
                      );
                    }),
                // )
              ],
            ),
          )
        ],
      )),
    );
  }
}
