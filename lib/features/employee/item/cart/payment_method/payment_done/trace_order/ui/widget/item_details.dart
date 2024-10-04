import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/widget/details_item_on_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        color: MyColor.lightWhite,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Container(
            width: 170.w,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/shirt2.png',
                  width: 150.w,
                  height: 195.h,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            width: 167.h,
            height: 195.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: MyColor.primaryBackGroundColor,
            ),
            child: const DetailsItemOnContainer()
          ),
        ],
      ),
    );
  }
}
