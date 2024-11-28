import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Errorr,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            print('Loading state received');
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: MyColor.primaryColor,
                    ),
                  );
                });
          },
          success: (loginResponse) {
            print('Success state received: $loginResponse');
            Navigator.of(context).pop();
            Navigator.pushNamed(context, Routes.mainPage);
          },
          error: (error) {
            print('Error state received: $error');
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: MyColor.primaryBackGroundColor,
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  error,
                  style: TextStyle(
                    color: MyColor.primaryColorText,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'ok',
                      style: TextStyle(
                        color: MyColor.primaryColorText,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
