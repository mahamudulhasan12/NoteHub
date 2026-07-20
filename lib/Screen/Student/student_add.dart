import 'package:flutter/material.dart';
import 'package:notehub/data/student.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_button.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/custom_textfield.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key,required this.addStudnet});
  final Function(Student)addStudnet;
  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  TextEditingController description = TextEditingController();
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
          CustomTextfield(controller: semister, hintText: "Enter runing Semister",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: dept, hintText: "Enter your Deptment",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
          SizedBox(height: 10,),
          CustomTextfield(controller: description, hintText: "Enter your Description",outlineBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),maxline: 3,),

          SizedBox(height: 50,),
          CustomButton(height: 50, width: 50,
            onPressed: (){

            if(name.text.isEmpty){
              return;
            }
            if(email.text.isEmpty){
              return;
            }
            if(phone.text.isEmpty){
              return;
            }
            if(institute.text.isEmpty){
              return;
            }
            if(semister.text.isEmpty){
              return;
            }
            if(dept.text.isEmpty){
              return;
            }


            final data =Student(name: name.text, email: email.text, phone: phone.text,institute: institute.text, semister: semister.text, dept: dept.text,description: description.text, );
            widget.addStudnet(data);
            Navigator.pop(context);
            },
            buttonStyle: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ), child: CustomText(text: "Save",textStyle: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2
          ),),)
        ],
      ),
    );
  }
}
