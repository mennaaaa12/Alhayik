import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowAppBarHome extends StatelessWidget {
  const RowAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.notifications_none, color: Colors.black, size: 27.sp),
          ),
          SizedBox(width: 10.w),
          Image.asset(
            'assets/images/logo.png',
            width: 205.w,
            height: 46.h,
          ),
          SizedBox(width: 10.w),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined,
                color: Colors.black, size: 25.sp),
          ),
        ],
      ),
    );
  }
}
