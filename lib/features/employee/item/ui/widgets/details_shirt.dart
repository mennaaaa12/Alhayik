import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsShirt extends StatelessWidget {
  const DetailsShirt({super.key, required this.txt});
final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10.h,
          width: 10.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: MyColor.midgrey,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
         txt,
          style: TextStyle(
              fontSize: 14.sp,
              color: MyColor.midgrey,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
