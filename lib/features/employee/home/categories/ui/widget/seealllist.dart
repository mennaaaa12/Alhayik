import 'package:alhayik/features/employee/home/categories/ui/widget/seeallnew.dart';
import 'package:flutter/material.dart';

class SeeAllNeww extends StatelessWidget {
  const SeeAllNeww({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       
        Expanded(
          child: Gridviewwishlistt(),
        ),
      ],
    );
  }
}
