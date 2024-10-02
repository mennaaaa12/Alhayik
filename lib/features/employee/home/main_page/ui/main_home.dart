import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/home/chat/ui/chat.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/home_screen.dart';
import 'package:alhayik/features/employee/home/profile/ui/profile.dart';
import 'package:alhayik/features/employee/home/wish_list/ui/wish_list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _page = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(), // This seems to be duplicated. Adjust as necessary.
    const Chat(),
    const WishList(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.h,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: MyColor.primaryColor,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Icon(
            _page == 0 ? FontAwesomeIcons.home : FontAwesomeIcons.home,
            size: 20,
            color: MyColor.primaryBackGroundColor,
          ),
          Icon(
            _page == 1 ? FontAwesomeIcons.list : FontAwesomeIcons.list,
            size: 20,
            color: MyColor.primaryBackGroundColor,
          ),
          Icon(
            _page == 2 ?  FontAwesomeIcons.crown : FontAwesomeIcons.crown,
            size: 20,
            color: MyColor.primaryBackGroundColor,
          ),
          Icon(
            _page == 3 ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
            size: 20,
            color: MyColor.primaryBackGroundColor,
          ),
          Icon(
            _page == 4 ? FontAwesomeIcons.solidUser : FontAwesomeIcons.user,
            size: 20,
            color: MyColor.primaryBackGroundColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _pages[_page],
    );
  }
}
