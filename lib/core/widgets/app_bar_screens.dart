import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBaScreens extends StatelessWidget {
  const AppBaScreens(
      {super.key,
      required this.txt,
      this.showBackButton = false,
      this.showicons = true});
  final String txt;
  final bool showBackButton;
  final bool showicons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (showBackButton)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: MyColor.dotindecator,
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
          if (showicons)
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.notification);
                    },
                    child: Icon(Icons.notifications_none,
                        color: Colors.black, size: 27.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                     onTap: () {
                      Navigator.pushNamed(context, Routes.cartShopping);
                    },
                    child: Icon(Icons.shopping_bag_outlined,
                        color: Colors.black, size: 25.sp),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
