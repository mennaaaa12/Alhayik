import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndNameAndEmail extends StatelessWidget {
  const ImageAndNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
              children: [
                CircleAvatar(
                  radius: 37.r,
                   backgroundImage: const AssetImage('assets/images/profile_image.png',),
                ),
                SizedBox(width: 10.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Al-haik Al-Arabi',style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                    SizedBox(height: 2.h,),
                    Text('alhaikalarabi@gmail.com',style: TextStyle(color: MyColor.midgrey,fontSize: 12.sp,fontWeight: FontWeight.w500),),
                  ],
                )
              ]);
  }
}