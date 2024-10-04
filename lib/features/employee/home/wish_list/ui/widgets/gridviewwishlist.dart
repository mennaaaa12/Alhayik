import 'package:alhayik/features/employee/home/wish_list/ui/widgets/box_decor_wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gridviewwishlist extends StatelessWidget {
  const Gridviewwishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: 0.8, // Adjust aspect ratio to fit the content
          ),
          itemCount: 9, // Number of items
          itemBuilder: (context, index) {
            return const BoxImageDetails();
          },
        ),
      );
  }
}