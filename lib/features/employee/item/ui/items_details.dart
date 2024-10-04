import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/routing/routes.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/ui/widgets/container_image_column.dart';
import 'package:alhayik/features/employee/item/ui/widgets/container_image_sec_row.dart';
import 'package:alhayik/features/employee/item/ui/widgets/details_shirt.dart';
import 'package:alhayik/features/employee/item/ui/widgets/first_row_details.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_quantity_plus_And_minus.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_review_and_divider.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_reviews_and_see_all.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_stars_and_add_comment.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_vontainer_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsDetails extends StatefulWidget {
  const ItemsDetails({super.key});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  String selectedImage = 'assets/images/shirt4.png';
  String selectedSize = 'S';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBaScreens(
                  txt: 'T-shirt',
                  showBackButton: true,
                ),
                  Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0,
                ),
              ),
              
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImage = 'assets/images/shirt1.png';
                            });
                          },
                          child: const ContainerImageColumn(
                              image: 'assets/images/shirt1.png'),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImage = 'assets/images/shirt2.png';
                            });
                          },
                          child: const ContainerImageColumn(
                              image: 'assets/images/shirt2.png'),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImage = 'assets/images/shirt4.png';
                            });
                          },
                          child: const ContainerImageColumn(
                              image: 'assets/images/shirt4.png'),
                        )
                      ],
                    ),
                    SizedBox(width: 20.w),
                    ContainerImageSecRow(
                      selectedImage: selectedImage,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                const FirstRowDetails(),
                Text(
                  'T-shirt over size solid color',
                  style: TextStyle(
                      color: MyColor.midgrey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                const RowColor(),
                SizedBox(height: 10.h),
                const RowVontainerColor(),
                SizedBox(height: 10.h),
                Text(
                  'Size',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    sizeButton('S'),
                    SizedBox(width: 10.w),
                    sizeButton('M'),
                    SizedBox(width: 10.w),
                    sizeButton('L'),
                    SizedBox(width: 10.w),
                    sizeButton('XL'),
                    SizedBox(width: 10.w),
                    sizeButton('XXL'),
                  ],
                ),
                SizedBox(height: 20.h),
                const DetailsShirt(
                  txt: 'Shoulder : 40 cm',
                ),
                SizedBox(height: 5.h),
                const DetailsShirt(
                  txt: 'Chest : 120 cm',
                ),
                SizedBox(height: 10.h),
                Text(
                  'Quantity',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.h),
                RowQuantityPlusAndMinus(
                  quantity: quantity,
                ),
                SizedBox(height: 20.h),
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Turpis lorem aliquam imperdiet id purus. Urna non elit habitant semper vel in sagittis amet. Sodales tincidunt a erat et sed at at. Viverra semper vivamus risus lacinia purus euismod.',
                  maxLines: 4,
                  style: TextStyle(
                      color: MyColor.midgrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30.h),
                const RowReviewsAndSeeAll(),
                SizedBox(height: 10.h),
                const RowReviewAndDivider(),
                SizedBox(
                  height: 10.h,
                ),
                const RowStarsAndAddComment(),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cart);
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
                      'Add To Cart',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget to create each size button
  Widget sizeButton(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        height: 30.h,
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color:
              selectedSize == size ? MyColor.dotindecator : Colors.transparent,
          border: Border.all(
            color:
                selectedSize == size ? MyColor.dotindecator : MyColor.midgrey,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize == size ? Colors.black : MyColor.midgrey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
