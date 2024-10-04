import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviderVertical extends StatelessWidget {
  const DeviderVertical({super.key, this.color});
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        SizedBox(
          height: 60.h,
          child: VerticalDivider(
            color:color?? MyColor.primaryColor,
            thickness: 1.5.sp,
          ),
        ),
      ],
    );
  }
}
