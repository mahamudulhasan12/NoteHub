import 'package:flutter/material.dart';
import 'package:notehub/models/task_model.dart';
import 'package:notehub/widgets/custom_appbar.dart';

import '../widgets/custom_text.dart';

class NoteViewScreen extends StatefulWidget {
  const NoteViewScreen({super.key});

  @override
  State<NoteViewScreen> createState() => _NoteViewScreenState();
}

class _NoteViewScreenState extends State<NoteViewScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(Title: Text("View Note"),Style: TextStyle(
        fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white
      ),Colors: Colors.blueAccent,CenterTitle: true,),
      body: Padding(
        padding: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),
    );
  }
}
