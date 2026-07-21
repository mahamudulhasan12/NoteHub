import 'package:flutter/material.dart';
import 'package:notehub/data/student.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_button.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/custom_textfield.dart';

class StudentEdit extends StatefulWidget {
  const StudentEdit({super.key,required this.Name,required this.Email,required this.Phone,required this.Institute,required this.Semister,required this.Dept,required this.Description,required this.index});
  final String Name;
  final String Email;
  final String Phone;
  final String Institute;
  final String Semister;
  final String Dept;
  final String Description;
  final int index;
  @override
  State<StudentEdit> createState() => _StudentEditState();
}

class _StudentEditState extends State<StudentEdit> {

  late TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController institute = TextEditingController();
  TextEditingController semister = TextEditingController();
  TextEditingController dept = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  void initState() {
    super.initState();
    name.text = widget.Name;
    email.text = widget.Email;
    phone.text = widget.Phone;
    institute.text = widget.Institute;
    semister.text = widget.Semister;
    dept.text = widget.Dept;
    description.text = widget.Description;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        Title: Text("Student Edit"),
        Style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        Colors: Colors.blueAccent,
        CenterTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        children: [
          CustomTextfield(
            controller: name,
            hintText: "Enter your full name",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: email,
            hintText: "Enter your full email",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: phone,
            hintText: "Enter your phone number",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: institute,
            hintText: "Enter your institute",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: semister,
            hintText: "Enter runing Semister",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: dept,
            hintText: "Enter your Deptment",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          CustomTextfield(
            controller: description,
            hintText: "Enter your Description",
            outlineBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            maxline: 3,
          ),

          SizedBox(height: 50),
          CustomButton(
            height: 50,
            width: 50,
            onPressed: () {
              final updateData = Student(
                name: name.text,
                email: email.text,
                phone: phone.text,
                institute: institute.text,
                semister: semister.text,
                dept: dept.text,
                description: description.text,

              );

              Navigator.pop(context , updateData);
            },
            buttonStyle: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            child: CustomText(
              text: "Update Data",
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
