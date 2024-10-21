import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailsAndPrice extends StatelessWidget {
  const ItemDetailsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        color: Colors.black,
        child: Icon(
          Icons.delete,
          color: Colors.red, // Red recycle bin icon
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
        padding:  EdgeInsets.symmetric(horizontal: 10.w,),
        child: Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: MyColor.lightWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
              topRight: Radius.circular(8.r)
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                   
                   
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
                ),
                Expanded(
                  child: Container(
                   
                 
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color: MyColor.primaryBackGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'T-shirt over size',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'solid color',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'size: XL',
                            style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Quantity: 1',
                            style: TextStyle(
                              color: MyColor.midgrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '200\$',
                            style: TextStyle(
                              color: MyColor.primaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
