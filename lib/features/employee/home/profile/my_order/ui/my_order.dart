import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/home/profile/my_order/ui/widgets/list_view_my_orser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const AppBaScreens(
                showBackButton: true,
                txt: 'My order',
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0,
                ),
              ),
            
              TabBar(
                tabs: const [
                  Tab(text: 'complete'),
                  Tab(text: 'active'),
                  Tab(text: 'cancle'),
                ],
                dividerColor: MyColor.primaryBackGroundColor,
                indicatorColor: Colors.black,
                indicatorWeight: 0.4.sp,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0.w,
                  ),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: MyColor.midgrey,
                padding: EdgeInsets.symmetric(horizontal: 40.w),
              ),
              
           SizedBox(height: 5.h,),
              const Expanded(
                child: TabBarView(
                  children: [
                    ListViewMyOrser(),
                    ListViewMyOrser(),
                    ListViewMyOrser(),
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
