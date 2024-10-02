import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/app_routes.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Alhayik(appRouter: AppRouter()));
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
