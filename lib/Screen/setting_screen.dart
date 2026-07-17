import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_text.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(text: "Setting Page",textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
