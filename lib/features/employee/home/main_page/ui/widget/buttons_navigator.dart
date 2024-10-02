// import 'package:flutter/material.dart';

// class ButtonsNavigator extends StatefulWidget {
//   const ButtonsNavigator({super.key});

//   @override
//   State<ButtonsNavigator> createState() => _ButtonsNavigatorState();
// }

// class _ButtonsNavigatorState extends State<ButtonsNavigator> {
//   @override
//   Widget build(BuildContext context) {
//     return     Expanded(
//               child: MaterialButton(
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const Profile();
//                     currentTab = 0;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.person,
//                       color: currentTab == 0 ? MyColor.primaryColor : MyColor.primaryColorText,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//   }
// }