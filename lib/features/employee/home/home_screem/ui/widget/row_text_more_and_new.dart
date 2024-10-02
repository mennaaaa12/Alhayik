import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowTextMoreAndNew extends StatelessWidget {
  const RowTextMoreAndNew({super.key, required this.txt, this.onTap});
 final void Function()? onTap;
final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt,
               style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              )),
          const Spacer(),
          Text('See All',
              style: TextStyle(
                color: MyColor.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
              )),
              SizedBox(width: 10.w),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: MyColor.primaryColor,
              size: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
