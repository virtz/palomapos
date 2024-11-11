import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/routes/app_router.dart';
import 'package:test_app/core/routes/app_router.gr.dart';
import 'package:test_app/features/table_service/domain/entities/table_service.dart';

import '../../../../injectable.dart';

class TableServiceCard extends StatelessWidget {
  const TableServiceCard({super.key, required this.color, required this.table});

  final Color color;

  final TableService table;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().push(TableDetails(tableService: table));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5.w),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    table.title,
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      height:
                          30.h), // Adds space between title and customerName
                  Text(
                    table.customerName ?? "",
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 20.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6.r),
                    bottomRight: Radius.circular(6.r),
                  ),
                  color: color,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: Row(
                    mainAxisAlignment: table.status == TableStatus.done
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        table.quota,
                        style: TextStyle(fontSize: 11.sp, color: Colors.black),
                      ),
                      table.status == TableStatus.done
                          ? Container()
                          : Text(
                              table.time ?? "",
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.black),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
