import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/text_form_field.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true; // Set to true initially
     late TextEditingController passwordController;
          late TextEditingController emailController;

@override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
     emailController = context.read<LoginCubit>().emailController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
       key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Phone number',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your phone ";
              }
              return null;
            },
            textEditingController: context.read<LoginCubit>().emailController,
            hintText: 'Enter your phone',
          ),
          SizedBox(height: 40.h),
           Text('Password',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your password";
              }
              return null;
            },
           textEditingController: passwordController,
            hintText: 'Enter your password',
            isObScure: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: MyColor.primaryColor,
                size: 20.0.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
void didChangeDependencies() {
  super.didChangeDependencies();
  passwordController = context.read<LoginCubit>().passwordController;
    emailController = context.read<LoginCubit>().emailController;

}
}
