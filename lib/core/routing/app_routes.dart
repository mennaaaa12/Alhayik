import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/auth/sign_in/ui/login.dart';
import 'package:alhayik/features/auth/sign_up/ui/Sign_up.dart';
import 'package:alhayik/features/employee/home/chat/ui/chat.dart';
import 'package:alhayik/features/employee/home/home_screem/see_all_new/ui/see_all_new.dart';
import 'package:alhayik/features/employee/home/home_screem/see_all_sale/ui/see_all_sale.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/home_screen.dart';
import 'package:alhayik/features/employee/home/main_page/ui/main_home.dart';
import 'package:alhayik/features/employee/home/profile/ui/profile.dart';
import 'package:alhayik/features/employee/home/search/ui/search.dart';
import 'package:alhayik/features/employee/home/wish_list/ui/wish_list.dart';
import 'package:alhayik/features/employee/item/ui/items_details.dart';
import 'package:alhayik/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';



class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>  const Login()
        );
        case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) =>  const SignUp()
        );
      
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const Chat(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const Profile(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (_) => const Search(),
        );
      case Routes.mainPage:
        return MaterialPageRoute(
          builder: (_) => const MainHome(),
        );
      case Routes.wishListScreen:
        return MaterialPageRoute(
          builder: (_) => const WishList(),
        );
      case Routes.seeAllNewScreen:
        return MaterialPageRoute(
          builder: (_) => const SeeAllNew(),
        );
        case Routes.seeAllSaleScreen:
        return MaterialPageRoute(
          builder: (_) => const SeeAllSale(),
        );
         case Routes.itemsDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const ItemsDetails(),
        );
      default:
        return null;
    }
  }
}
