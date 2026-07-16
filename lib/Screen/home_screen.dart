import 'package:flutter/material.dart';
import 'package:notehub/Screen/add_task_screen.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/task_card.dart';

import '../widgets/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        Title: Text("NoteHub App"),Style: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,
      ),Colors: Colors.blue,CenterTitle: true,
        actions: [
          IconButton(onPressed: (){

          },
              icon: Icon(Icons.person,size: 30,color: Colors.white,)
          )
        ],
      ),
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context , index){
          return  SizedBox(
            height: 100,
            width: double.infinity,
            child: Center(
              child: CustomTeskCard(
                colors: Colors.grey[200],
                leading: CircleAvatar(
                  radius: 20,
                  child: CustomText(text: "A"),
                ),
                title: CustomText(text: "Hello",textStyle: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                ),),
                subTitle: CustomText(text: "Tahks your Coder",textStyle: TextStyle(
                  fontSize: 14,overflow: TextOverflow.ellipsis,
                ),),
                trailing: IconButton(onPressed: (){}, icon:Icon(Icons.edit)),
              ),
            ),
          );
        },
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 65,
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTaskScreen()));
          },
          backgroundColor: Colors.blue,
          shape:CircleBorder(),
          materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
          child: Icon(Icons.add,size: 35,color: Colors.white,),
        ),
      ),
      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomContainer(height: 50, width: 50, decoration:BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                          child: CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.person,size: 30,),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
