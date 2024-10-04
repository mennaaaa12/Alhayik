import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/employee/item/review/ui/widgets/column_comment_and_reply.dart';
import 'package:alhayik/features/employee/item/review/ui/widgets/row_image_name_star_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewItemComment extends StatelessWidget {
  const ListViewItemComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowImageNameStarTime(),
        SizedBox(height: 8.h),
        const ColumnCommentAndReply(),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: const Divider(
            color: MyColor.lightgrey,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
