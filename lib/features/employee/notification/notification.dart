import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBaScreens(
              showBackButton: true,
              showicons: false,
              txt: 'Notification',
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: const Divider(
                color: MyColor.lightgrey,
                thickness: 1.0,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                        color: MyColor.primaryBackGroundColor,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.midgrey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                            'New Update',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Just Now',
                            style: TextStyle(
                                color: MyColor.midgrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            maxLines: 3,
                              'Lorem ipsum dolor sit amet consectetur. Neque rhoncus sed libero sagittis lacus neque. Lacinia sapien turpis vel platea neque lobortis urnaLorem rhoncus sed libero sagittis lacu',
                              style: TextStyle(
                                color: MyColor.midgrey,
                                fontSize: 12.sp,
                              ))
                        ],
                      ),
                    ),
                  ),
                   SizedBox(height: 20.h),
                    Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                        color: MyColor.primaryBackGroundColor,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.midgrey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                            'Important',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '14h ago',
                            style: TextStyle(
                                color: MyColor.midgrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            maxLines: 3,
                              'Lorem ipsum dolor sit amet consectetur. Neque rhoncus sed libero sagittis lacus neque. Lacinia sapien turpis vel platea neque lobortis urnaLorem rhoncus sed libero sagittis lacu',
                              style: TextStyle(
                                color: MyColor.midgrey,
                                fontSize: 12.sp,
                              ))
                        ],
                      ),
                    ),
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
