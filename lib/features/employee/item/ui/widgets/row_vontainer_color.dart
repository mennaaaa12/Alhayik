import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/containers_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowVontainerColor extends StatelessWidget {
  const RowVontainerColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ContainersColor(
          color: MyColor.primaryBackGroundColor,
        ),
        SizedBox(
          width: 3.w,
        ),
        const ContainersColor(
          bordercolor: MyColor.midgrey,
          color: MyColor.midgrey,
        ),
        SizedBox(
          width: 3.w,
        ),
        const ContainersColor(
          bordercolor: MyColor.darkBlack,
          color: MyColor.lightGreen,
        ),
        SizedBox(
          width: 3.w,
        ),
        const ContainersColor(
          bordercolor: MyColor.darkBlue,
          color: MyColor.darkBlue,
        ),
        SizedBox(
          width: 3.w,
        ),
        const ContainersColor(
          bordercolor: MyColor.darkRed,
          color: MyColor.darkRed,
        ),
      ],
    );
  }
}
