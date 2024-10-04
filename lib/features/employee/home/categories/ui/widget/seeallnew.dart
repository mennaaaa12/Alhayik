import 'package:alhayik/features/employee/home/categories/ui/widget/box_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gridviewwishlistt extends StatelessWidget {
  final int? selectedIndex; // Receive selected button index

  const Gridviewwishlistt({super.key,  this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    int itemCount;
    if (selectedIndex == 1) {
      itemCount = 2; 
    } else if (selectedIndex == 2) {
      itemCount = 5;
    }
    else if (selectedIndex == 3) {
      itemCount = 3;
    }
    else if (selectedIndex == 4) {
      itemCount = 6;
    }
     else {
      itemCount = 8; 
    }

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 0,
          mainAxisSpacing: 0.h,
          childAspectRatio: 0.8, 
        ),
        itemCount: itemCount, // Dynamic item count
        itemBuilder: (context, index) {
          return const BoxGrid();
        },
      ),
    );
  }
}
