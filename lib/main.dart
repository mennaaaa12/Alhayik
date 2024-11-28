import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/di/dependancy_injection.dart';
import 'package:alhayik/core/helpers/constants.dart';
import 'package:alhayik/core/helpers/extensions.dart';
import 'package:alhayik/core/helpers/shared_pref_helper.dart';
import 'package:alhayik/core/routing/app_routes.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   setupGetIt();
   await checkIfLoggedInUser();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Alhayik(appRouter: AppRouter()));
}
checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

class Alhayik extends StatelessWidget {
  const Alhayik({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, __) => MaterialApp(
        title: 'Alhayik',
        theme: ThemeData(
          primaryColor: MyColor.primaryBackGroundColor,
          scaffoldBackgroundColor: MyColor.primaryBackGroundColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        
      ),
    );
  }
}
