import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/change_address/ui/widgets/text_form_field_change_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBaScreens(
                showicons: false,
                txt: 'Change Address',
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('City',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 10.h),
                    const TextFormFieldChangeAddress(
                      txt: 'Enter your city',
                    ),
                    SizedBox(height: 10.h),
                    Text('Street',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 10.h),
                    const TextFormFieldChangeAddress(
                      txt: 'Enter your street name ',
                    ),
                    SizedBox(height: 10.h),
                    Text('Building',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 10.h),
                    const TextFormFieldChangeAddress(
                      txt: 'Enter your building name ',
                    ),
                    SizedBox(height: 20.h), // Adjust the spacing here
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('floor',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 10.h),
                              const TextFormFieldChangeAddress(
                                txt: '17/11',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('flat',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 10.h),
                              const TextFormFieldChangeAddress(
                                txt: '112',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text('Additional Info',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 10.h),
                    const TextFormFieldChangeAddress(
                      txt: 'Enter your nearest place ',
                    ),
                     SizedBox(height: 20.h),
                    SizedBox(
                      width: double.infinity,
                      height: 60.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.paymentMethod);
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
                          'Add',
                          style: TextStyle(fontSize: 16.sp),
                        ),
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
