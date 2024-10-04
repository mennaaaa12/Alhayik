import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowImageNameStarTime extends StatelessWidget {
  const RowImageNameStarTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/image_review.png'),
          radius: 30,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nihad Ghazal',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: MyColor.dotindecator,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: MyColor.dotindecator,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: MyColor.dotindecator,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: MyColor.midgrey,
                  size: 18.sp,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 95.w,
        ),
        Text(
          '1 hour',
          style: TextStyle(
              color: MyColor.midgrey,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
