import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonOnboarding extends StatelessWidget {
  const ButtonOnboarding({super.key, this.primaryColor, this.txt, this.onPressed, this.primaryBackGroundColor});
  final Color? primaryColor;
    final Color? primaryBackGroundColor;

  final String? txt;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: primaryColor ?? Colors.black,
          foregroundColor: primaryBackGroundColor?? MyColor.primaryBackGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
            side: const BorderSide(color: Colors.black), 
          ),
        ),
        child: Text(
          txt ?? '',
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
    );
  }
}
