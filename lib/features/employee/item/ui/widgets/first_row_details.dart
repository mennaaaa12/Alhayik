import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstRowDetails extends StatelessWidget {
  const FirstRowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '300 SAR',
          style: TextStyle(
            color: MyColor.dotindecator,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          '450 SAR',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
            color: MyColor.midgrey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        const Spacer(),
        Icon(
          Icons.star,
          color: MyColor.dotindecator,
          size: 20.sp,
        ),
        Text(
          '14.8 (60 Reviews)',
          style: TextStyle(
            color: MyColor.midgrey,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
