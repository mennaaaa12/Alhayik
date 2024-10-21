import 'package:flutter/material.dart';
class ReusableTile extends StatelessWidget {
  final String title, value;
  final IconData iconData;

  const ReusableTile({
    super.key,
    required this.title,
    required this.iconData,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          leading: Icon(iconData, color: Colors.black),
        ),
        Divider(color: Colors.black.withOpacity(0.4)),
      ],
    );
  }
}
