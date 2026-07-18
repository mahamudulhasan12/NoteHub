import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notehub/models/task_model.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/widgets/custom_textfield.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key,required this.addData});
  final Function(TaskModel)addData;
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController tilteController = TextEditingController();
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
          CustomTextfield(controller: tilteController, hintText: "Title",hintStyle: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
          ),outlineBorder: InputBorder.none,),
          SizedBox(height: 30,),
          CustomTextfield(controller: description, hintText: "Description",hintStyle: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold,
          ),
            maxline: 5,
            outlineBorder: InputBorder.none,),

          SizedBox(height: 50,),
          Lottie.network(
            "https://assets3.lottiefiles.com/packages/lf20_x62chJ.json",
          ),
          // Lottie.network(
          //   "https://app.lottiefiles.com/share/b07c9877-fcc3-4ebc-b75f-d6faa2395112",
          // ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 65,
        child: FloatingActionButton(
          onPressed: (){
            if(tilteController.text.isEmpty){
              return;
            }if(description.text.isEmpty){
              return;
            }
            final note =TaskModel(title:tilteController.text , subtitle: description.text);
            widget.addData(note);
            Navigator.pop(context);
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
