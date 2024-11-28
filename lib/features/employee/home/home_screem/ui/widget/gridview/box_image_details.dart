import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/employee/home/home_screem/data/model/items_apis_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoxImageDetailshome extends StatelessWidget {
  const BoxImageDetailshome({super.key, this.doctorsModel});
final Doctors? doctorsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 5, left: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.itemsDetailsScreen);
        },
        child: Container(
          height: 250.h,
          width: 160.w, // Ensuring it remains responsive
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  'assets/images/image_home.png',
                  width: 300.w,  // Set the width responsive
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'T-Shirt',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'Quantity Available : 20',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: MyColor.midgrey,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          '7SAR',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: MyColor.primaryColor,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '450 SAR',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: MyColor.midgrey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.zero,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: MyColor.lightgrey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_bag_outlined,
                                color: Colors.black, size: 20.sp),
                          ),
                          Container(
                            width: 1.w,
                            height: 40.h,
                            color: MyColor.lightgrey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.heart,
                                color: Colors.black, size: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
