import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/review/ui/widgets/list_view/list_view_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const AppBaScreens(
                      txt: 'Reviews',
                      showBackButton: true,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: const Divider(
                        color: MyColor.lightgrey,
                        thickness: 1.0,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    const ListViewComment(),
                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 75.h,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.add,
                      color: MyColor.dotindecator,
                    ),
                    hintText: 'Write a review...',
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
