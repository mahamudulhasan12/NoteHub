import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_textfield.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  TextEditingController imgUrl = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController institute = TextEditingController();
  TextEditingController semister = TextEditingController();
  TextEditingController dept = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(Title:Text("Student Info"),Style: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white
      ),Colors: Colors.blueAccent,CenterTitle: true,),

      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 20),
        children: [
          CustomTextfield(controller: imgUrl, hintText: "Enter your image url",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: name, hintText: "Enter your full name",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: email, hintText: "Enter your full email",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: phone, hintText: "Enter your phone number",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: institute, hintText: "Enter your institute",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: semister, hintText: "Enter runing year",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: dept, hintText: "Enter your Deptment",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
        ],
      ),
    );
  }
}
