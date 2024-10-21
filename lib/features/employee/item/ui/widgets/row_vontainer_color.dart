import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/item/ui/widgets/containers_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowVontainerColor extends StatefulWidget {
  const RowVontainerColor({super.key});

  @override
  _RowContainerColorState createState() => _RowContainerColorState();
}

class _RowContainerColorState extends State<RowVontainerColor> {
  int _selectedIndex = -1; // To track which container is selected

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First color container
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 0;
            });
          },
          child: ContainersColor(
            color: MyColor.dotindecator,
            bordercolor: _selectedIndex == 0
                ? Colors.black
                : null, // Make border black when selected
            isBold: _selectedIndex == 0, // Make text bold when selected
          ),
        ),
        SizedBox(width: 3.w),

        // Second color container
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 1;
            });
          },
          child: ContainersColor(
            color: MyColor.midgrey,
            bordercolor: _selectedIndex == 1 ? Colors.black : MyColor.midgrey,
            isBold: _selectedIndex == 1,
          ),
        ),
        SizedBox(width: 3.w),

        // Third color container
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
          child: ContainersColor(
            color: MyColor.lightGreen,
            bordercolor: _selectedIndex == 2 ? Colors.black : MyColor.darkBlack,
            isBold: _selectedIndex == 2,
          ),
        ),
        SizedBox(width: 3.w),

        // Fourth color container
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 3;
            });
          },
          child: ContainersColor(
            color: MyColor.lightBlue,
            bordercolor: _selectedIndex == 3 ? Colors.black : MyColor.darkBlue,
            isBold: _selectedIndex == 3,
          ),
        ),
        SizedBox(width: 3.w),

        // Fifth color container
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = 4;
            });
          },
          child: ContainersColor(
            color: MyColor.lightRed,
            bordercolor: _selectedIndex == 4 ? Colors.black : MyColor.darkRed,
            isBold: _selectedIndex == 4,
          ),
        ),
      ],
    );
  }
}
