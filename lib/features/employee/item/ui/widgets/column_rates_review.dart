import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnRatesReview extends StatelessWidget {
  const ColumnRatesReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Excellent:',
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width:10.w,
            ),
            Row(
              children: [
                Container(
                  height: 2.h,
                  width: 90.w,
                  color: MyColor.dotindecator, 
                ),
                Container(
                  width: 30.w,
                  height: 2.h, 
                  color: MyColor.midgrey, 
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Very Good:',
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                Container(
                  height: 2.h,
                  width: 70.w,
                  color: MyColor.dotindecator, 
                ),
                Container(
                  width: 50.w,
                  height: 2.h, 
                  color: MyColor.midgrey, 
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
       Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Good:',
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                Container(
                  height: 2.h,
                  width: 60.w,
                  color: MyColor.dotindecator, 
                ),
                Container(
                  width: 60.w,
                  height: 2.h,
                  color: MyColor.midgrey, 
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
