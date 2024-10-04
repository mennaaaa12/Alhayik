import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstRowLocation extends StatelessWidget {
  const FirstRowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              SizedBox(width: 10.w),
              Text(
                'Shipping Address',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.changeAddress);
                },
                child: Container(
                    height: 40.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: MyColor.primaryColor,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'change',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.only(left: 35.w, right: 20.w),
            child: Text(
              maxLines: 2,
              'Al-Madinah Al-Munawarah Rd, Al Bawadi, Jeddah 23531, Saudi Arabia',
              style: TextStyle(
                color: MyColor.midgrey,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
