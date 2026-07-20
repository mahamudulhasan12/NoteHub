import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.height,
    required this.width,

    required this.decoration,
    required this.child,
    this.alignment,
  });
  final double ? height;
  final double width;
  final Decoration decoration;
  final AlignmentGeometry ? alignment;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: decoration,
      alignment: alignment,
      child: child,
    );
  }
}
