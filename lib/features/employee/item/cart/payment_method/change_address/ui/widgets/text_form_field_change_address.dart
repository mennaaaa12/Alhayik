import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldChangeAddress extends StatelessWidget {
  const TextFormFieldChangeAddress({super.key, required this.txt});
final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: MyColor.midgrey),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
            hintText: txt,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        )
      ],
    );
  }
}
