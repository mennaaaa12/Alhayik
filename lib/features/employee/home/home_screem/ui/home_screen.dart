import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/text_form_field.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/widget/cursol_images.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/widget/gridview/grid_view_details.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/widget/row_app_bar_home.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/widget/row_text_more_and_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0; 
  final List<String> imgList = [
    'assets/images/image_cursol.png',
    'assets/images/image_cursol.png',
    'assets/images/image_cursol.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // SizedBox(height: 20.h),
                const RowAppBarHome(),
                SizedBox(height: 20.h),
                CustomTextFormField(
                  primaryColorsecond: MyColor.primaryColorsecond,
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    color: MyColor.midgrey,
                    size: 20.sp,
                  ),
                  hintText: 'What are you looking For ?',
                  suffixIcon: Icon(
                    FontAwesomeIcons.filter,
                    color: MyColor.midgrey,
                    size: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                CursolImages(
                  currentIndex: _currentIndex,
                  imgList: imgList,
                ),
                SizedBox(height: 20.h),
                 RowTextMoreAndNew(
                  onTap: (){
                      Navigator.pushNamed(context, Routes.seeAllNewScreen);
                  },
                  txt: 'New',
                ),
                SizedBox(height: 20.h),
               const GridViewDetails(),
                SizedBox(height: 20.h),
                 RowTextMoreAndNew(
                   onTap: (){
                      Navigator.pushNamed(context, Routes.seeAllSaleScreen);
                  },
                  txt: 'Sale',
                ),
                SizedBox(height: 20.h),
               const GridViewDetails(),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
