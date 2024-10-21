import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowDetailsProfile extends StatelessWidget {
  const RowDetailsProfile({
    super.key,
    required this.txt,
    required this.iconData, // Add iconData as a required parameter
  });

  final String txt;
  final IconData iconData; // Declare iconData as a class member

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconData, // Use the iconData parameter
          color: Colors.black,
        ),
        SizedBox(width: 10.w),
        Text(
          txt, // Display the text passed as parameter
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Icon(
          size: 20.sp,
          Icons.arrow_forward_ios,
          color: MyColor.dotindecator,
        ),
        
      ],
    );
  }
}
