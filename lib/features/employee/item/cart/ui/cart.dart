import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/cart/ui/widgets/list_view/list_view_item_details_and_price.dart';
import 'package:alhayik/features/employee/item/cart/ui/widgets/text_field_promo_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const AppBaScreens(
                    txt: 'Cart',
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
                  const ListViewItemDetailsAndPrice(),
                  SizedBox(height: 25.h),
                  const TextFieldPromoCode(),
                  SizedBox(height: 20.h),
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
                          'Checkout',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
