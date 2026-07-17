import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({

    required this.height,
    required this.width,

    required this.onPressed,
    required this.buttonStyle,
    required this.child,
  });

  final double height;
  final double width;
  final Widget child;
  final VoidCallback onPressed;
  final ButtonStyle buttonStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(

        onPressed: onPressed,
        style: buttonStyle,

        child:child ,
        ),
    );
  }
}