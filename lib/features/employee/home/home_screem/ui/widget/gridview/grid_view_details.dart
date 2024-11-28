import 'package:alhayik/features/employee/home/home_screem/data/model/items_apis_model.dart';
import 'package:alhayik/features/employee/home/home_screem/ui/widget/gridview/box_image_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewDetails extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const GridViewDetails({super.key, this.doctorsList});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h, 
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BoxImageDetailshome(
          //  doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
