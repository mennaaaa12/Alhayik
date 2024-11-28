import 'dart:developer';
import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_reques_body.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/custom_button.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/email_and_password.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/forget_pass.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/login_bloc_listener.dart';
import 'package:alhayik/sign_in_method/sign_in_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  // Helper function to handle Facebook login
  static Future<void> loginWithFacebook(BuildContext context) async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success) {
        final OAuthCredential credential = FacebookAuthProvider.credential(
            loginResult.accessToken!.tokenString);

        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        Navigator.pushNamed(context, Routes.mainPage); // Redirect to home page
      } else {
        log('Facebook login failed: ${loginResult.message}');
      }
    } catch (e) {
      log('Error during Facebook login: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80.h),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 79.h),
                const EmailAndPassword(),
                SizedBox(height: 5.h),
                const ForgetPass(),
                SizedBox(height: 40.h),
                CustomButton(
                  onPressed: () {
                    validateThenDoLogin(context);
                   // Navigator.pushNamed(context, Routes.mainPage);
                  },
                  txt: 'Login',
                ),
                SizedBox(height: 20.h),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                      IconButton(
                        onPressed: (){
                          loginWithFacebook(context);
                        },
                        icon: const Icon(FontAwesomeIcons.facebook
                        , color: Colors.blue,
                        ),
                        
                      ),
                      SizedBox( width: 25.w,),
                      IconButton(
                        onPressed: (){
                          SignInMethods.signInWithGoogle();
                        },
                        icon: const Icon(FontAwesomeIcons.google
                        , color: Colors.red,
                        ),
                        
                      ),
                  ]
                ),
                
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signUpScreen);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: MyColor.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                 const LoginBlocListener(),
                SizedBox(height: 60.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
    void validateThenDoLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      print('Form validated, emitting login state');
      loginCubit.emitLoginStates(
        LoginRequestBody(
          phone: loginCubit.emailController.text,
          password: loginCubit.passwordController.text,
        ),
      );
    } else {
      print('Form validation failed');
    }
  }
}
