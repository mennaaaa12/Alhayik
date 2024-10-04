import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/core/widgets/divder_horizontal.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_vontainer_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String selectedSize = 'New Arrival';
  String selectedSize2 = 'Women';
  String selectedSize3 = 'Summer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBaScreens(
              txt: 'Filter',
              showBackButton: true,
            ),
           const DivderHorizontal(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Type',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      sizeButton('New Arrival'),
                      SizedBox(width: 10.w),
                      sizeButton('Top Triend'),
                      SizedBox(width: 10.w),
                      sizeButton('Best Seller'),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      sizeButton('Recommend'),
                      SizedBox(width: 10.w),
                      sizeButton('Top Rated'),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      sizeButton2('Women'),
                      SizedBox(width: 10.w),
                      sizeButton2('Man'),
                      SizedBox(width: 10.w),
                      sizeButton2('Kids'),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const RowColor(),
                  SizedBox(height: 10.h),
                  const RowVontainerColor(),
                  SizedBox(height: 20.h),
                  const Text(
                    'Collections',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      sizeButton3('Summer'),
                      SizedBox(width: 10.w),
                      sizeButton3('Winter'),
                      SizedBox(width: 10.w),
                      sizeButton3('Spring'),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      sizeButton3('Autumn'),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const Text(
                    'Price Range',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SAR',
                              style: TextStyle(
                                  color: MyColor.primaryColor, fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '500',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '-',
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                          height: 40.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SAR',
                                  style: TextStyle(
                                      color: MyColor.primaryColor,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text('5200',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.sp))
                              ]))
                    ],
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: MyColor.primaryColor,
                        foregroundColor: MyColor.primaryBackGroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: const BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        'Done',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: MyColor.primaryBackGroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: const BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        'Clear',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget sizeButton(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        height: 40.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color:
              selectedSize == size ? MyColor.primaryColor : Colors.transparent,
          border: Border.all(
            color:
                selectedSize == size ? MyColor.primaryColor: MyColor.midgrey,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize == size ? MyColor.primaryBackGroundColor : MyColor.midgrey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
   Widget sizeButton2(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize2 = size;
        });
      },
      child: Container(
        height: 40.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color:
              selectedSize2 == size ? MyColor.primaryColor : Colors.transparent,
          border: Border.all(
            color:
                selectedSize2 == size ? MyColor.primaryColor: MyColor.midgrey,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize2 == size ? MyColor.primaryBackGroundColor : MyColor.midgrey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
   Widget sizeButton3(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize3 = size;
        });
      },
      child: Container(
        height: 40.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color:
              selectedSize3 == size ? MyColor.primaryColor : Colors.transparent,
          border: Border.all(
            color:
                selectedSize3 == size ? MyColor.primaryColor: MyColor.midgrey,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize3 == size ? MyColor.primaryBackGroundColor : MyColor.midgrey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
