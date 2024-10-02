import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, required this.onPressed});
  final String txt;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.black),
            color: MyColor.primaryColor),
        child: TextButton(
            onPressed: onPressed,
            child:  Center(
              child: Text(
                txt,
                style: const TextStyle(color: MyColor.lightWhite),
              ),
            )));
  }
}
