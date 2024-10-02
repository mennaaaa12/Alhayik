import 'package:alhayik/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class TextFieldSignUp extends StatefulWidget {
  const TextFieldSignUp({super.key});

  @override
  State<TextFieldSignUp> createState() => _TextFieldSignUpState();
}

class _TextFieldSignUpState extends State<TextFieldSignUp> {
  bool isObscureText = true; // Set to true initially

  @override
  Widget build(BuildContext context) {
    return Form(
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
            hintText: 'Enter your name',
          ),
          SizedBox(height: 40.h),
           Text('E-mail',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
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
          
            hintText: 'Enter your password',
           
          ),
           SizedBox(height: 40.h),
           Text('Phone',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your password";
              }
              return null;
            },
          
            hintText: "+966 ..........",
            prefixIcon: const Icon(Icons.flag),
           
          ),
        ],
      ),
    );
  }
}
