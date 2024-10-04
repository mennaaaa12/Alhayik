import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowQuantityPlusAndMinus extends StatefulWidget {
   RowQuantityPlusAndMinus({super.key, required this.quantity});
 int quantity;
  @override
  State<RowQuantityPlusAndMinus> createState() => _RowQuantityPlusAndMinusState();
}

class _RowQuantityPlusAndMinusState extends State<RowQuantityPlusAndMinus> {
  @override
  Widget build(BuildContext context) {
    return    Row(
                 
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (widget.quantity > 1) {
                            widget.quantity--; // Decrease quantity
                          }
                        });
                      },
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: MyColor.midgrey),
                           color: MyColor.dotindecator
                        ),
                        child: const Center(child: Text('-')),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      widget.quantity.toString(),
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.quantity++; // Increase quantity
                        });
                      },
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: MyColor.midgrey),
                          color: MyColor.dotindecator
                        ),
                        child: const Center(child: Text('+')),
                      ),
                    ),
                  ],
                );
  }
}