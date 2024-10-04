import 'package:alhayik/features/employee/home/home_screem/ui/widget/gridview/box_image_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewDetails extends StatelessWidget {
  const GridViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.h, 
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BoxImageDetailshome();
        },
      ),
    );
  }
}
