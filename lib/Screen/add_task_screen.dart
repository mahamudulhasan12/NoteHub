import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/widgets/custom_textfield.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController tilte = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(Title: Text("Add Note Data"),Style: TextStyle(
        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
      ),Colors: Colors.blueAccent,CenterTitle: true,),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 20,),
          CustomTextfield(controller: tilte, hintText: "Title",hintStyle: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
          ),outlineBorder: InputBorder.none,),
          SizedBox(height: 30,),
          CustomTextfield(controller: description, hintText: "Description",hintStyle: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold,
          ),outlineBorder: InputBorder.none,),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 65,
        child: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Colors.blue,
          shape:CircleBorder(),
          materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
          child: Icon(Icons.save,size: 35,color: Colors.white,),
        ),
      ),

    );
  }
}
