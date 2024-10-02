import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerImageSecRow extends StatelessWidget {
  const ContainerImageSecRow({super.key, required this.selectedImage});
final String selectedImage;
  @override

  Widget build(BuildContext context) {
    return Container(
                      width: 245.w,
                      height: 278.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: MyColor.primaryBackGroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            selectedImage,
                            width: 174.w,
                            height: 195.h,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    );
  }
}