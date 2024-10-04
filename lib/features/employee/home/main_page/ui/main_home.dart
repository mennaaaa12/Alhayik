import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/home/categories/ui/categories.dart';
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
    const Categories(), 
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
          _buildAnimatedIcon(0, FontAwesomeIcons.home, FontAwesomeIcons.home),
          _buildAnimatedIcon(1, FontAwesomeIcons.list, FontAwesomeIcons.list),
          _buildAnimatedIcon(2, FontAwesomeIcons.crown, FontAwesomeIcons.crown),
          _buildAnimatedIcon(3, FontAwesomeIcons.heart, FontAwesomeIcons.solidHeart),
          _buildAnimatedIcon(4, FontAwesomeIcons.user, FontAwesomeIcons.solidUser),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _pages[_page],
      ),
    );
  }

  // This method builds an animated icon with transition effects
  Widget _buildAnimatedIcon(int index, IconData icon, IconData activeIcon) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      height: _page == index ? 35.h : 20.h, 
      width: _page == index ? 35.w : 20.w, 
      child: Icon(
        _page == index ? activeIcon : icon,
        size: _page == index ? 20 : 20, 
        color: _page == index ? MyColor.primaryBackGroundColor : MyColor.primaryBackGroundColor, 
      ),
    );
  }
}
