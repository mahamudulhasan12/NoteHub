import 'package:flutter/material.dart';

class CustomTeskCard extends StatelessWidget {
  const CustomTeskCard({
    super.key,
    this.leading,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.colors
  });
  final Widget ? leading;
  final Widget title;
  final Widget subTitle;
  final Widget ? trailing;
  final Color ? colors;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: colors,
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subTitle,
        trailing:trailing ,
      ),
    );
  }
}
