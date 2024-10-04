import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnCommentAndReply extends StatelessWidget {
  const ColumnCommentAndReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 80.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maxLines: 5,
            'Lorem ipsum dolor sit amet consectetur. Turpis lorem aliquam imperdiet id purus. Urna non elit habitant semper vel in sagittis amet. Sodales tincidunt a erat et sed at at. Viverra semper vivamus risus lacinia purus euismod.',
            style: TextStyle(
                color: MyColor.midgrey,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Reply',
            style: TextStyle(
                color: MyColor.dotindecator,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
