import 'package:alhayik/features/employee/home/profile/my_order/ui/widgets/list_view_item_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewMyOrser extends StatelessWidget {
  const ListViewMyOrser({super.key});

   @override
  Widget build(
    BuildContext context) {
    return ListView.builder(
      
      itemCount: 5,
      itemBuilder: (biuld,context){
      return Padding(
        padding:  EdgeInsets.only(bottom: 15.h,),
        child: const ListViewItemOrder(),
      );
    });
  }
}