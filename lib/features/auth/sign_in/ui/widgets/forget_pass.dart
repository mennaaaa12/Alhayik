import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';


class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
           Navigator.pushNamed(context, Routes.forgetPassword);
          },
          child: const Text(
            'Forgot your password?',
            style: TextStyle(
              color: MyColor.primarySecindColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
