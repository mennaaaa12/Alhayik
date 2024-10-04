import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewItemOrder extends StatelessWidget {
  const ListViewItemOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        color: Colors.black,
        child: Icon(
          Icons.delete,
          color: Colors.red, 
          size: 32.w,
        ),
      ),
      confirmDismiss: (direction) async {
        return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm Deletion'),
              content: const Text('Are you sure you want to delete this item?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false); // Don't delete
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true); // Confirm delete
                  },
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Item deleted')),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: MyColor.lightWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 165.0.w,
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
                width: 170.h,
                height: 193.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: MyColor.primaryBackGroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'T-shirt over size',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'solid color',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'size: XL',
                        style: TextStyle(
                          color: MyColor.midgrey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Quantity: 1',
                        style: TextStyle(
                          color: MyColor.midgrey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15.h),
                     Row(
                      children: [
                         Text(
                        '200\$',
                        style: TextStyle(
                          color: MyColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Container(
                        height: 40.h,
                        width: 90,
                        decoration: BoxDecoration(
                          color: MyColor.primaryColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.black),
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.pushNamed(context, Routes.traceOrder);
                        }, child: Text('Trace order',style: TextStyle(color: MyColor.primaryBackGroundColor,fontSize: 12.sp),)),
                      )
                      ],
                     )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
