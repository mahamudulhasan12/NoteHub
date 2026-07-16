import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({
    super.key,
    required this.Title,
    this.Style,
    this.CenterTitle,
    this.Leading,
    this.actions,
    this.Colors,
  });
  final Widget Title;
  final TextStyle ? Style;
  final bool ? CenterTitle;
  final Widget ? Leading;
  final List<Widget> ? actions;
  final Color ? Colors;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Title,titleTextStyle: Style,
      centerTitle: CenterTitle,
      leading:Leading ,
      actions: actions,
      backgroundColor: Colors,
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
