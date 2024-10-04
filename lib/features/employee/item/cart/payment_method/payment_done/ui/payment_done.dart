import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

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
                'Order Done!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              )),
              Center(
                  child: Image.asset(
                'assets/images/paymentdone.png',
                width: 125,
                height: 125,
              )),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: Text(
                maxLines: 2,
                'Your Order has been placed successfully,You will receive notification for your order.',
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
                         Navigator.pushNamed(context, Routes.traceOrder);
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
                          'Order Tracking',
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
