import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/button_onboarding.dart';
import 'package:alhayik/features/onboarding/data/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 71, 62, 33), // Set background to transparent
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              contents[currentIndex].image,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover, // Ensure this covers the entire background
            ),
          ),

          // Onboarding Content
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: contents.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 172.h),
                          if (currentIndex < contents.length - 1) ...[
                            // Displaying title and description for all but last page
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: MyColor.primaryColorText,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              contents[i].description,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: MyColor.primaryColorTextsecond,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ] else ...[
                            // Last page content
                            SizedBox(height: 370.h),
                            ButtonOnboarding(
                              primaryColor: MyColor.primaryColor,
                              txt: 'Login',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.loginScreen);
                              },
                            ),
                            SizedBox(height: 15.h),
                            SizedBox(
                              width: double.infinity,
                              height: 60.h,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: MyColor.primaryColor,
                                  foregroundColor:
                                      MyColor.primaryBackGroundColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    side: const BorderSide(color: Colors.black),
                                  ),
                                ),
                                child: Text(
                                  'Login With Phone Number',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ),
                            )
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Dots Indicator only for non-last page
              if (currentIndex < contents.length - 1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index),
                  ),
                ),

              // Next/Continue Button
              Padding(
                padding: EdgeInsets.only(
                    bottom: 40.h, left: 40.w, right: 40.w, top: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: TextButton(
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushNamed(context, Routes.signUpScreen);
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut, // Adjust the transition curve for smoother transition
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: MyColor.primaryBackGroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      currentIndex == contents.length - 1 ? "Sign Up" : "Next",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 10.h,
      width: currentIndex == index ? 10.w : 10.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? MyColor.dotindecator
            : MyColor.primaryColorText,
        borderRadius: BorderRadius.circular(20.r),
      ),
    );
  }
}
