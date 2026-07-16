import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/Screen/home_screen.dart';
import 'package:notehub/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    toFuncaton(context);
    // TODO: implement initState
    super.initState();
  }
  Future toFuncaton(BuildContext context)async{
    await Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 270),
        children: [
          Image.network(
            height: 110,
            width: 50,

            "https://cdn-icons-png.flaticon.com/128/1828/1828640.png",
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: "NoteHub App",textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              CustomText(text: "Manage Your Daily",textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),),
              CustomText(text: "notes easily",textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
