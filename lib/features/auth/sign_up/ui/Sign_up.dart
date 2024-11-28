import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/custom_button.dart';
import 'package:alhayik/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:alhayik/features/auth/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:alhayik/features/auth/sign_up/ui/widgets/text_field_signUp.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80.h),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 60.h),
                const TextFieldSignUp(),
                SizedBox(height: 50.h),
                CustomButton(
                  colorbutton: Colors.black,
                  onPressed: () {
                   //  validateThenDoSignup(context);
                    Navigator.pushNamed(context, Routes.mainPage);
                  },
                  txt: 'Sign Up',
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //  validateThenDoLogin(context);
                        Navigator.pushNamed(context, Routes.loginScreen);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: MyColor.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              //    const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
 void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
