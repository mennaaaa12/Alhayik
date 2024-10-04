import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/home/categories/ui/widget/seeallnew.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwoColumnsDetailsItem extends StatefulWidget {
  const PageTwoColumnsDetailsItem({super.key});

  @override
  _PageTwoColumnsDetailsItemState createState() => _PageTwoColumnsDetailsItemState();
}

class _PageTwoColumnsDetailsItemState extends State<PageTwoColumnsDetailsItem> {
  final List<bool> _isSelected = [true, false, false, false, false];

  int _selectedButtonIndex = 0; // Track selected button index

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
      // Reset all buttons to not selected
      for (int i = 0; i < _isSelected.length; i++) {
        _isSelected[i] = false;
      }
      // Set the pressed button to selected
      _isSelected[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: 100.w, 
          decoration: const BoxDecoration(
            color: MyColor.lightWhite,
          ),
          child: Column(
            children: List.generate(5, (index) {
              // Define button labels
              List<String> buttonLabels = [
                'Just for You',
                'New',
                'Sale',
                'Pantalon',
                'T-Shirt'
              ];

              return GestureDetector(
                onTap: () => _onButtonPressed(index),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0.h),
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    color: _isSelected[index] ? MyColor.primaryBackGroundColor : MyColor.lightWhite,
                  ),
                  child: Center(
                    child: Text(
                      buttonLabels[index], 
                      style: TextStyle(
                        fontSize: 12.sp, 
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: MyColor.primaryBackGroundColor,
            ),
            // Pass the selected button index to Gridviewwishlistt
            child: Gridviewwishlistt(selectedIndex: _selectedButtonIndex),
          ),
        ),
      ],
    );
  }
}
