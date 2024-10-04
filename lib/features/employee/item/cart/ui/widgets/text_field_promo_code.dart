import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldPromoCode extends StatelessWidget {
  const TextFieldPromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Container(
        height: 65.h,
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: const TextField(
          
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.add,
              color: MyColor.dotindecator,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 8),
            hintText: 'Apply Promo Code',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
