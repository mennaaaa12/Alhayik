import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainersColor extends StatelessWidget {
  final Color color;
  final Color? bordercolor;
  final bool isBold;

  const ContainersColor({
    required this.color,
    this.bordercolor,
    this.isBold = false, // Default is not bold
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: bordercolor ?? Colors.transparent,
        ),
        //borderRadius: BorderRadius.circular(8.r),
        shape: BoxShape.circle
      ),
    
    );
  }
}

