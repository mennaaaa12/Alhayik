import 'package:alhayik/features/employee/home/home_screem/ui/widget/gridview/box_image_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gridviewwishlist extends StatelessWidget {
  const Gridviewwishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 5.w,
            mainAxisSpacing: 5.h,
            childAspectRatio: 0.8, // Adjust aspect ratio to fit the content
          ),
          itemCount: 4, // Number of items
          itemBuilder: (context, index) {
            return const BoxImageDetails();
          },
        ),
      );
  }
}