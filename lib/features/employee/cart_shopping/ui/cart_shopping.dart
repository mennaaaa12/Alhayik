import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartShopping extends StatelessWidget {
  const CartShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130.h,
              ),
              Center(
                  child: Text(
                'Cart Empty!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              )),
              Center(
                  child: Image.asset(
                'assets/images/orderempty.png',
                width: 125,
                height: 125,
              )),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: Text(
               
                'You shopping cart is empty..',
                style: TextStyle(
                    color: MyColor.midgrey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 200.h,
              ),
              SizedBox(
                      width: double.infinity,
                      height: 60.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                          'Go Shopping',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
