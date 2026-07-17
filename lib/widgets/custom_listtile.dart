import 'package:flutter/material.dart';



class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,

    required this.onPress,
  });
  final Widget title;
  final Widget leading;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,title: title,
      onTap: onPress,
    );
  }
}