import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoxImageDetails extends StatelessWidget {
  const BoxImageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 0, left: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.itemsDetailsScreen);
        },
        child: Container(
          width: 160.w,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: MyColor.primaryBackGroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Allow column to take only needed space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    'assets/images/image_home.png',
                    width: 160.w,  // Match the container's width
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'T-Shirt',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Quantity Available: 20',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: MyColor.midgrey,
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    '450 SAR',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: MyColor.midgrey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '7 SAR',
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: MyColor.primaryColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: MyColor.lightgrey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.black,
                              size: 20.sp,
                            ),
                          ),
                          Container(
                            width: 1.w,
                            height: 40.h,
                            color: MyColor.lightgrey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.heart,
                              color: Colors.black,
                              size: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
