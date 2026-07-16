import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.outlineBorder,
    required this.controller,
    this.inputType,
    required this.hintText,
    this.hintStyle,
  });
  final InputBorder ? outlineBorder;
  final TextEditingController controller;
  final TextInputType ? inputType;
  final String hintText;
  final TextStyle ? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        border: outlineBorder,
      ),
    );
  }
}
