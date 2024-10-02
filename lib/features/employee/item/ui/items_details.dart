import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/ui/widgets/container_image_column.dart';
import 'package:alhayik/features/employee/item/ui/widgets/container_image_sec_row.dart';
import 'package:alhayik/features/employee/item/ui/widgets/containers_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/first_row_details.dart';
import 'package:alhayik/features/employee/item/ui/widgets/row_color.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBaScreens(
                  txt: 'T-shirt',
                  showBackButton: true,
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
                      fontSize: 18.sp,
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
                Container(
                  height: 30.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: MyColor.midgrey)
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: TextStyle(
                          color: MyColor.midgrey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
