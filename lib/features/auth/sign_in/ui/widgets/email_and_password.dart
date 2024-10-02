import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true; // Set to true initially

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
}
