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
    SizedBox(width: 10.w),
    Expanded(
      child: Container(
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
                  fontSize: 18.sp, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ],
          ),
        ),
      ),
    ),
  ],
);
  }
}