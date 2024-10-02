import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search',style: TextStyle(color: MyColor.primaryColorText),),
    );
  }
}