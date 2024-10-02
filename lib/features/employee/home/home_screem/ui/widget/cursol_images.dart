import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CursolImages extends StatefulWidget {
   CursolImages({super.key, required this.imgList, required this.currentIndex});
final List<String> imgList;
 int currentIndex ;
  @override
  State<CursolImages> createState() => _CursolImagesState();
}

class _CursolImagesState extends State<CursolImages> {
  @override
  Widget build(BuildContext context) {
    return Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 150.h,

                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlayInterval: const Duration(seconds: 3),
                        onPageChanged: (index, reason) {
                          setState(() {
                            widget.currentIndex = index; // Update current index
                          });
                        },
                      ),
                      items: widget.imgList.map((item) {
                        return Container(
                          width: double.infinity, 
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    // Dot Indicators
                    Positioned(
                      bottom: 10.h,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widget.imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                 widget.currentIndex  = entry.key;
                              });
                            },
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(horizontal: 4.0.h),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:  widget.currentIndex  == entry.key
                                    ? MyColor.primaryColor // Use the corresponding color
                                    : MyColor.primaryBackGroundColor, // Inactive dot color
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                )
             
             ;
  }
}