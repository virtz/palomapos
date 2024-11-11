import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateText extends StatelessWidget {
  const UpdateText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
            text: "Update",
            style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                fontSize: 10.sp),
            children: const [
              TextSpan(
                  text: "  Paloma POS V0.22 - 2024-06-0408:18",
                  style: TextStyle(
                      color: Colors.grey, decoration: TextDecoration.none))
            ]));
  }
}
