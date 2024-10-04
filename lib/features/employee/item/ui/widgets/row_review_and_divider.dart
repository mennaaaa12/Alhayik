import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/column_rates_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowReviewAndDivider extends StatelessWidget {
  const RowReviewAndDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
  children: [
    const ColumnRatesReview(),
    SizedBox(width: 30.w),
    Container(
      width: 92.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: MyColor.dotindecator,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '4.8',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp, 
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 8.w), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Based on',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  '60 reviews',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
);
  }
}