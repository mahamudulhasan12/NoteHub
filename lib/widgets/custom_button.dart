import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    this.boxDecoraton,
    required this.child
  });
  final double height;
  final double width;
  final Decoration ? boxDecoraton;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){

      },
      child: Container(
        height:height ,
        width: width,
        decoration: boxDecoraton,
        child: child,
      ),
    );
  }
}
