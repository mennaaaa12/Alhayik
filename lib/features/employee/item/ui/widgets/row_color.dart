import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowColor extends StatelessWidget {
  const RowColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Color : ',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
        Text(
          ' White',
          style: TextStyle(
            color: MyColor.midgrey,
            fontSize: 16.sp,
          ),
        )
      ],
    );
  }
}
