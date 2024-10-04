import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowIconAndTxtTrace extends StatelessWidget {
  const CustomRowIconAndTxtTrace(
      {super.key,
      required this.icon,
      required this.txt1,
      required this.txt2,
      this.color});
  final IconData icon;
  final String txt1;
  final String txt2;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55.w,
          height: 55.h,
          decoration: BoxDecoration(
              color: color ?? MyColor.primaryColor, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              icon,
              color: MyColor.primaryBackGroundColor,
              size: 20.sp,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt1,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              txt2,
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
