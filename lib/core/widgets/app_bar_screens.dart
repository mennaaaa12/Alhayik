import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBaScreens extends StatelessWidget {
  const AppBaScreens({super.key, required this.txt, this.showBackButton = false});
  final String txt;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Conditionally show the back arrow
          if (showBackButton)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),

          // Centered text
          Center(
            child: Text(
              txt,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.notifications_none,
                    color: Colors.black, size: 27.sp),
                SizedBox(
                  width: 10.w,
                ),
                Icon(Icons.shopping_bag_outlined,
                    color: Colors.black, size: 25.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
