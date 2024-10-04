import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DivderHorizontal extends StatelessWidget {
  const DivderHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: const Divider(
        color: MyColor.lightgrey,
        thickness: 1.0,
      ),
    );
  }
}
