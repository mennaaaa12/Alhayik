import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.isObScure,
    this.textEditingController,
     this.validator,
    this.textStyle,
    this.padding, this.prefixIcon, this.primaryColorsecond,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final bool? isObScure;
  final Widget? prefixIcon;
  final Color? primaryColorsecond;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  TextDirection _textDirection = TextDirection.ltr;

  void _checkTextDirection(String value) {
    if (value.isNotEmpty && RegExp(r'[\u0600-\u06FF]').hasMatch(value)) {
      setState(() {
        _textDirection = TextDirection.rtl; 
      });
    } else {
      setState(() {
        _textDirection = TextDirection.ltr; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: widget.textEditingController,
        onChanged: _checkTextDirection,
        textDirection: _textDirection, 
        decoration: InputDecoration(
          isDense: true,
          contentPadding: widget.padding ??
              EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 16.h),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: MyColor.midgrey,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: MyColor.midgrey,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: MyColor.midgrey,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: widget.hintText ,
          
          hintStyle: widget.textStyle ??
              const TextStyle(
                color: MyColor.midgrey,
                fontWeight: FontWeight.normal,
                fontSize: 15.0,
              ),
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          fillColor:widget.primaryColorsecond ?? MyColor.primaryBackGroundColor,
          filled: true,
        ),
        style: const TextStyle(
          color: Colors.black,
        ),
        obscureText: widget.isObScure ?? false,
        validator: widget.validator,
      ),
    );
  }
}
