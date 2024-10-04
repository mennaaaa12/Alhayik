import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxGrid extends StatelessWidget {
  const BoxGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.itemsDetailsScreen);
        },
        child: Container(
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r)),
                child: Image.asset(
                  'assets/images/image_home.png',
                  width: 300.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'T-Shirt',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Quantity Available: 20',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: MyColor.midgrey,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Text(
              //         '7 SAR',
              //         style: TextStyle(
              //           fontSize: 10.sp,
              //           color: MyColor.primaryColor,
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 1.w),
              //     Container(
              //       height: 25.h,
              //       padding: const EdgeInsets.all(0),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8.r),
              //         border: Border.all(color: MyColor.lightgrey),
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           IconButton(
              //             padding: const EdgeInsets.all(0), // Remove extra padding
              //             constraints:
              //                 const BoxConstraints(), // Remove default constraints
              //             onPressed: () {
              //               // Handle adding to cart
              //             },
              //             icon: Icon(
              //               Icons.shopping_bag_outlined,
              //               color: Colors.black,
              //               size: 10.sp, // Smaller icon size
              //             ),
              //           ),
              //           const VerticalDivider(color: MyColor.lightgrey, width: 1),
              //           IconButton(
              //             padding: const EdgeInsets.all(0), // Remove extra padding
              //             constraints:
              //                 const BoxConstraints(), // Remove default constraints
              //             onPressed: () {
              //               // Handle adding to favorites
              //             },
              //             icon: Icon(
              //               FontAwesomeIcons.heart,
              //               color: Colors.black,
              //               size: 10.sp, // Smaller icon size
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
