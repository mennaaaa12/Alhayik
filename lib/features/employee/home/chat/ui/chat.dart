import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Chat',style: TextStyle(color: MyColor.primaryColorText),),
    );
  }
}