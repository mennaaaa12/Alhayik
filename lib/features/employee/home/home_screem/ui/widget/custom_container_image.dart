import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerImage extends StatelessWidget {
  const CustomContainerImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 175.w,
        height: 113.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}
