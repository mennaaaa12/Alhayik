import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/home/profile/ui/widgets/image_and_name_and_email.dart';
import 'package:alhayik/features/employee/home/profile/ui/widgets/row_details_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedLanguage = 'English';

  // Method to open a modal bottom sheet with language options
  void _showLanguageOptions() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.w),
          height: 250.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Language',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h),
              ListTile(
                title: Text(
                  'English',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: selectedLanguage == 'English'
                        ? MyColor.primaryColor
                        : Colors.black,
                  ),
                ),
                trailing: selectedLanguage == 'English'
                    ? const Icon(Icons.check, color: MyColor.primaryColor)
                    : null,
                onTap: () {
                  setState(() {
                    selectedLanguage = 'English';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Arabic',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: selectedLanguage == 'Arabic'
                        ? MyColor.primaryColor
                        : Colors.black,
                  ),
                ),
                trailing: selectedLanguage == 'Arabic'
                    ? const Icon(Icons.check, color: MyColor.primaryColor)
                    : null,
                onTap: () {
                  setState(() {
                    selectedLanguage = 'Arabic';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBaScreens(
                txt: 'My Account',
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0,
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageAndNameAndEmail(),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: _showLanguageOptions,
                      child: RowDetailsProfile(
                        iconData: Icons.language_outlined,
                        txt: selectedLanguage,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: const RowDetailsProfile(
                        iconData: Icons.shopping_bag_outlined,
                        txt: 'My Order',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: const RowDetailsProfile(
                        iconData: FontAwesomeIcons.heart,
                        txt: 'My Favorite',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: const RowDetailsProfile(
                        iconData: Icons.menu_book_sharp,
                        txt: 'Terms Of Use',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: const RowDetailsProfile(
                        iconData: Icons.privacy_tip_outlined,
                        txt: 'Privacy',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: const RowDetailsProfile(
                        iconData: Icons.phone_callback_outlined,
                        txt: 'Contact Us',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: RowDetailsProfile(
                        iconData: Icons.language_outlined,
                        txt: selectedLanguage,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, Routes.loginScreen);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:  Colors.black,
                            foregroundColor: 
                                MyColor.primaryBackGroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              side: const BorderSide(color: Colors.black),
                            ),
                          ),
                          child: Text(
                             'log out',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.facebook,size: 20.sp,),
                        SizedBox(width: 10.h,),
                        Icon(FontAwesomeIcons.instagram,size: 20.sp,),
                        SizedBox(width: 10.h,),
                        Icon(FontAwesomeIcons.snapchat,size: 20.sp,),
                      ],
                    )
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
