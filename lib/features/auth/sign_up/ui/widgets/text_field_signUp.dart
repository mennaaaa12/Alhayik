import 'package:alhayik/core/widgets/text_form_field.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:alhayik/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class TextFieldSignUp extends StatefulWidget {
  const TextFieldSignUp({super.key});

  @override
  State<TextFieldSignUp> createState() => _TextFieldSignUpState();
}

class _TextFieldSignUpState extends State<TextFieldSignUp> {
  bool isObscureText = true; // Set to true initially
  bool isPasswordConfirmationObscureText = true;
  late TextEditingController passwordController;
   @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
  
  }
 


  @override
  Widget build(BuildContext context) {
    return Form(
     // key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Name',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your name ";
              }
              return null;
            },
            //  textEditingController: context.read<SignupCubit>().nameController,
            hintText: 'Enter your name',
          ),
          SizedBox(height: 40.h),
           Text('E-mail',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
         //   textEditingController: context.read<SignupCubit>().emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your email ";
              }
              return null;
            },
            
            hintText: 'Enter your email',
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
          // textEditingController: context.read<SignupCubit>().passwordController,
            hintText: 'Enter your password',
           
          ),
           SizedBox(height: 40.h),
              CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your confirm password";
              }
              return null;
            },
           //textEditingController: context.read<SignupCubit>().passwordConfirmationController,
            hintText: 'Enter your confirm password',
           
          ),
           SizedBox(height: 40.h),
           Text('Phone',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your phone";
              }
              return null;
            },
          //   textEditingController: context.read<SignupCubit>().phoneController,
            hintText: "+966 ..........",
            prefixIcon: const Icon(Icons.flag),
           
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
