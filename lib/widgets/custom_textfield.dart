import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.outlineBorder,
    required this.controller,
    this.inputType,
    required this.hintText,
    this.hintStyle,
    this.colors,
    this.prefixIcon,
    this.prefixIconStyle,
    this.sufixIcon,
  });
  final InputBorder ? outlineBorder;
  final TextEditingController controller;
  final TextInputType ? inputType;
  final String hintText;
  final TextStyle ? hintStyle;
  final Color ? colors;
  final Widget ? prefixIcon;
  final TextStyle ? prefixIconStyle;
  final Widget ? sufixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixStyle: prefixIconStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        border: outlineBorder,
        fillColor: colors,
        suffixIcon: sufixIcon,
      ),
    );
  }
}
