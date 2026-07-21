import 'package:flutter/material.dart';

import 'package:notehub/Screen/Student/student_add.dart';
import 'package:notehub/Screen/Student/student_edit.dart';
import 'package:notehub/Screen/add_task_screen.dart';
import 'package:notehub/Screen/login_screen.dart';
import 'package:notehub/Screen/profile_screen.dart';
import 'package:notehub/Screen/setting_screen.dart';
import 'package:notehub/Screen/view_screen.dart';
import 'package:notehub/data/student.dart';
import 'package:notehub/models/task_model.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_listtile.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/task_card.dart';

import '../widgets/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<TaskModel> data =List.empty(growable: true);
  List<Student> data = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        Title: Text("NoteHub App"),Style: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,
      ),Colors: Colors.blue,CenterTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          },
              icon: Icon(Icons.person,size: 30,color: Colors.white,)
          )
        ],
      ),
      body:ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context , index){
          return  SizedBox(
            height: 100,
            width: double.infinity,
            child: Center(
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen(name: "${data[index].name}", email: "${data[index].email}", phone: "${data[index].phone}", institute: "${data[index].institute}", semister: "${data[index].dept}", dept: "${data[index].semister}",description: "${data[index].description}",removeData: removeData,index: index,)));

                },
                child: CustomTeskCard(
                  colors: Colors.grey[200],
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[100],
                    child: CustomText(text: "${index + 1}"),
                  ),
                  title: CustomText(text: "${data[index].name}",textStyle: TextStyle(
                      fontSize: 17,fontWeight: FontWeight.bold
                  ),),
                  subTitle: CustomText(text: "${data[index].email}",textStyle: TextStyle(
                    fontSize: 13,overflow: TextOverflow.ellipsis,
                  ),),
                  trailing: IconButton(
                      onPressed: () async {
                        Student? updatedStudent = await Navigator.push<Student>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudentEdit(
                              Name: data[index].name,
                              Email: data[index].email,
                              Phone: data[index].phone,
                              Institute: data[index].institute,
                              Semister: data[index].semister,
                              Dept: data[index].dept,
                              Description: data[index].description,
                              index: index,
                            ),
                          ),
                        );

                        if (updatedStudent != null) {
                          setState(() {
                            data[index] = updatedStudent;
                          });
                        }
                      },
                      icon:Icon(Icons.edit
                      )),
                ),
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentAdd(addStudnet: addStudent)));
          },
          backgroundColor: Colors.blue,
          shape:CircleBorder(),
          materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
          child: Icon(Icons.add,size: 35,color: Colors.white,),
        ),
      ),
      drawer: Drawer(
        width: 270,
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
                        CustomContainer(height: 60, width: 60, decoration:BoxDecoration(
                          shape: BoxShape.circle,border: BoxBorder.all(width: 2,color: Colors.grey)
                        ),
                          child: CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.person,size: 50,color: Colors.white,),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(text: "Mahamudul Hasan",textStyle: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                        ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(text: "mahamudulhasna459@gmail.com",textStyle: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              CustomListTile(leading: Icon(Icons.home,size: 27,),title: CustomText(text: "Home",textStyle: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold
              ),),
                onPress: (){
                  Navigator.pop(context);
                },
              ),

              CustomListTile(leading: Icon(Icons.person,size: 27,),title: CustomText(text: "Profile",textStyle: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold
              ),),
                onPress: (){

                },
              ),
              CustomListTile(leading: Icon(Icons.screen_lock_rotation_outlined,size: 27,),title: CustomText(text: "Login Screen",textStyle: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold
              ),),
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
              ),
              CustomListTile(leading: Icon(Icons.settings,size: 27,),title: CustomText(text: "Setting",textStyle: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold
              ),),
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomListTile(leading: Icon(Icons.logout,size: 27,),title: CustomText(text: "Logout",textStyle: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.bold,color: Colors.redAccent
                  ),),
                    onPress: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              )

            ],
          )
      ),
    );
  }
  void addStudent(Student note){
    data.add(note);
    setState(() {

    });
  }


  void removeData(int index){
    data.removeAt(index);
    setState(() {

    });


  }
}


