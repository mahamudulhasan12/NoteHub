import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/widgets/custom_text.dart';

import '../data/student.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key , required this.name , required this.email , required this.phone ,required this.institute,  required this.dept,required this.semister ,required this.description,required this.removeData,required this.index});

  final String name;
  final String email;
  final String phone;
  final String institute;
  final String semister;
  final String dept;
  final String description;
  final int index;

  final Function(int)removeData;




  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        actions: [
          IconButton(onPressed: (){

            setState(() {
              widget.removeData(widget.index);
            });
            Navigator.pop(context);
          }, icon:Icon(Icons.delete,size: 32,color: Colors.redAccent,)),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 175,
                width: double.infinity,
                color: Colors.blueAccent.shade100,
                alignment: Alignment.topCenter,
                child: Lottie.network(
                  "https://assets3.lottiefiles.com/packages/lf20_x62chJ.json",
                ),
              ),
              Positioned(
                bottom: -70,
                right: 100,
                child: CustomContainer(height: 150, width: 150, decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: BoxBorder.all(width: 2,color: Colors.grey)
                ), child: Image.network(
                  "https://cdn-icons-png.flaticon.com/128/3135/3135715.png"
                )
                ),
              )
            ],
          ),
          SizedBox(height: 70,),
          Center(
            child: CustomText(text: widget.name,textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.email,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "E-mail",textStyle: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: widget.email,textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.phone,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "phone",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: "+88${widget.phone}",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.vertical_shades_closed,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Institute",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: widget.institute,textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.subject,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Technology",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: widget.semister,textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.class_,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Semester",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: widget.dept,textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.info_outline,size: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Description",textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        CustomText(text: widget.description,textStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
