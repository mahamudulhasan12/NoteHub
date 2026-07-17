import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: (){
          },
            icon: Icon(Icons.settings,size: 27,color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueAccent,
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
            child: CustomText(text: "Md. Mahamudul Hasan",textStyle: TextStyle(
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
                  spacing: 15,
                  children: [
                    Icon(Icons.email,size: 25,),
                    CustomText(text: "mahamudulhasanmunna459@gmail.com",textStyle: TextStyle(
                      fontSize: 14,fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.phone,size: 25,),
                    CustomText(text: "+8801913242701",textStyle: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.location_on,size: 25,),
                    CustomText(text: "Rangpur,Bangladesh",textStyle: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold
                    ),)
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
