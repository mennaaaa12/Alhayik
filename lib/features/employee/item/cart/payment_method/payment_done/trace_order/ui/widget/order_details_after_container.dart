import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsAfterContainer extends StatelessWidget {
  const OrderDetailsAfterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Details',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Date',
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              '7 Feb 2024',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tracking ID',
              style: TextStyle(
                  color: MyColor.midgrey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'TRK12345678910',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
