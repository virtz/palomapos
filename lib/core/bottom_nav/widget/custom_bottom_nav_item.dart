// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

class CustomBottomNavItem extends StatefulWidget {
  final String? icon;
  final String? title;
  final String? iconActive;
  final bool isSelected;
  final Function? onTap;
  final bool isThird;
  final double? iconHeight;
  final double? iconWidth;
  // final Color? color;
  const CustomBottomNavItem(
      {
      // @required this.title,
      super.key,
      required this.icon,
      required this.iconActive,
      this.isSelected = false,
      required this.onTap,
      this.isThird = false,
      // this.color,
      this.title,
      this.iconHeight,
      this.iconWidth});

  @override
  _CustomBottomNavItemState createState() => _CustomBottomNavItemState();
}

class _CustomBottomNavItemState extends State<CustomBottomNavItem> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          widget.onTap!();
        },
        child: SizedBox(
          // color: Colors.blue,
          height: 50.h,
          // width: 60.w,
          // width: size.width / 3.4,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: widget.iconHeight ?? 20.h,
                width: widget.iconWidth ?? 20.w,
                decoration: widget.isSelected ? const BoxDecoration() : null,
                child: Image.asset(
                  widget.icon!,
                  // height: 40.h,
                  fit: BoxFit.contain,
                  color: widget.isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
              SizedBox(height: 5.0.h),
              Text(widget.title ?? "N/A", style: TextStyle(fontSize: 10.sp)),
            ],
          ),
        ));
  }
}
