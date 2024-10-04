import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowReviewsAndSeeAll extends StatelessWidget {
  const RowReviewsAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Reviews',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
        // const Spacer(),
        // Text('See All',
        //     style: TextStyle(
        //       color: MyColor.dotindecator,
        //       fontWeight: FontWeight.w600,
        //       fontSize: 15.sp,
        //     )),
        // SizedBox(width: 10.w),
        // GestureDetector(
        //   onTap: () {},
        //   child: Icon(
        //     FontAwesomeIcons.arrowRight,
        //     color: MyColor.dotindecator,
        //     size: 18.sp,
        //   ),
        // ),
      ],
    );
  }
}
