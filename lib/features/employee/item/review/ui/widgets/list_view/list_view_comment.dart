import 'package:alhayik/features/employee/item/review/ui/widgets/list_view/list_view_item_comment.dart';
import 'package:flutter/material.dart';

class ListViewComment extends StatelessWidget {
  const ListViewComment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (build, context) {
      return const ListViewItemComment();
    });
  }
}
