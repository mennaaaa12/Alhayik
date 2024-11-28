import 'package:alhayik/core/di/dependancy_injection.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/auth/forget_pass_screen/ui/forget_pass_screen.dart';
import 'package:alhayik/features/auth/forget_pass_screen/verification/ui/Verificarion.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:alhayik/features/auth/sign_in/ui/login.dart';
import 'package:alhayik/features/auth/sign_up/ui/Sign_up.dart';
import 'package:alhayik/features/employee/cart_shopping/ui/cart_shopping.dart';
import 'package:alhayik/features/employee/filter/ui/fillter.dart';
import 'package:alhayik/features/employee/home/chat/ui/chat.dart';
import 'package:alhayik/features/employee/home/home_screem/see_all_new/ui/see_all_new.dart';
import 'package:alhayik/features/employee/home/home_screem/see_all_sale/ui/see_all_sale.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/home_screen.dart';
import 'package:alhayik/features/employee/home/main_page/ui/main_home.dart';
import 'package:alhayik/features/employee/home/profile/edit_profile/ui/edit_profile.dart';
import 'package:alhayik/features/employee/home/profile/my_order/ui/my_order.dart';
import 'package:alhayik/features/employee/home/profile/ui/profile.dart';
import 'package:alhayik/features/employee/home/search/ui/search.dart';
import 'package:alhayik/features/employee/home/wish_list/ui/wish_list.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/change_address/ui/change_address.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/trace_order.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/ui/payment_done.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/ui/payment_method.dart';
import 'package:alhayik/features/employee/item/cart/ui/cart.dart';
import 'package:alhayik/features/employee/item/review/ui/review.dart';
import 'package:alhayik/features/employee/item/ui/items_details.dart';
import 'package:alhayik/features/employee/notification/notification.dart';
import 'package:alhayik/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const Login(),
          ),
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
         case Routes.reviews:
        return MaterialPageRoute(
          builder: (_) => const Review(),
        );
         case Routes.cart:
        return MaterialPageRoute(
          builder: (_) => const Cart(),
        );
         case Routes.myOrder:
        return MaterialPageRoute(
          builder: (_) => const MyOrder(),
        );
         case Routes.notification:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
         case Routes.filter:
        return MaterialPageRoute(
          builder: (_) => const Filter(),
        );
        case Routes.paymentMethod:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethod(),
        );
        case Routes.changeAddress:
        return MaterialPageRoute(
          builder: (_) => const ChangeAddress(),
        );
         case Routes.paymentDone:
        return MaterialPageRoute(
          builder: (_) => const PaymentDone(),
        );
        case Routes.traceOrder:
        return MaterialPageRoute(
          builder: (_) => const TraceOrder(),
        );
        case Routes.cartShopping:
        return MaterialPageRoute(
          builder: (_) => const CartShopping(),
        );
         case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );
         case Routes.verificationScreen:
        return MaterialPageRoute(
          builder: (_) => const Verification(),
        );
        case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfile(),
        );
      default:
        return null;
    }
  }
}
