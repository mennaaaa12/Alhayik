import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../item_details_and_price.dart';

class ListViewItemDetailsAndPrice extends StatelessWidget {
  const ListViewItemDetailsAndPrice({super.key});

  @override
  Widget build(
    BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (biuld,context){
      return Padding(
        padding:  EdgeInsets.only(bottom: 15.h),
        child: const ItemDetailsAndPrice(),
      );
    });
  }
}