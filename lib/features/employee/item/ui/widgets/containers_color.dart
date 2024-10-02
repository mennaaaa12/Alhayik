import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainersColor extends StatelessWidget {
  const ContainersColor({super.key, this.color, this.bordercolor});
final Color? color;
final Color? bordercolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:color,
          border: Border.all(color:bordercolor?? MyColor.primaryColor)),
    );
  }
}
