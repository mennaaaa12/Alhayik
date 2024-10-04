import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalSubtotalButtonCheckout extends StatelessWidget {
  const TotalSubtotalButtonCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub total:',
                          style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '100.00\$',
                          style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping fee:',
                          style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '100.00\$',
                          style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: const Divider(
                      color: MyColor.lightgrey,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '200.00\$',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.paymentDone);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: MyColor.primaryColor,
                          foregroundColor: MyColor.primaryBackGroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            side: const BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text(
                          'Checkout',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ),
      ],
    );
  }
}