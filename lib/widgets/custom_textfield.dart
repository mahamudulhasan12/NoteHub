import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.outlineBorder,
    required this.controller,
    this.inputType,
    required this.hintText,
  });
  final InputBorder ? outlineBorder;
  final TextEditingController controller;
  final TextInputType ? inputType;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        border: outlineBorder,
      ),
    );
  }
}
