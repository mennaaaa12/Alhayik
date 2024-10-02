import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/home/wish_list/ui/widgets/gridviewwishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllNew extends StatelessWidget {
  const SeeAllNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBaScreens(
                showBackButton: true,
                txt: 'New',
              ),
              Container(
                width: double.infinity, 
                padding: EdgeInsets.symmetric(vertical: 8.h), 
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0, 
                ),
              ),
              const Gridviewwishlist(),
            ],
          ),
        ),
      ),
    );
  }
}
