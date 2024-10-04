import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowStarsAndAddComment extends StatelessWidget {
  const RowStarsAndAddComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        SizedBox(
          width: 5.w,
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, Routes.reviews);
          },
          child: Text(
            'Add comment',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: MyColor.dotindecator,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
