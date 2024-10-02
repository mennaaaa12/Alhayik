import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerImageColumn extends StatelessWidget {
  const ContainerImageColumn({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67.w,
      height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: MyColor.primaryBackGroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Centered image
          Image.asset(
            image,
            width: 62.w,
            height: 70.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
