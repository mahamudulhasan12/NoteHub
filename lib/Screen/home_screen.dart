import 'package:flutter/material.dart';
import 'package:notehub/widgets/custom_appbar.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/task_card.dart';

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
      body:ListView(
        padding: EdgeInsets.all(8),
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Center(
              child: CustomTeskCard(
                colors: Colors.grey[200],
                leading: CircleAvatar(
                  radius: 20,
                  child: CustomText(text: "A"),
                ),
                  title: CustomText(text: "Congratulatin",textStyle: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                  ),),
                  subTitle: CustomText(text: "Tahks your CoderAngonhfdgdgagagfasgasg gasdgasdgsagsadgsgasgashgaah",textStyle: TextStyle(
                    fontSize: 14,overflow: TextOverflow.ellipsis,
                  ),),
                trailing: IconButton(onPressed: (){}, icon:Icon(Icons.edit)),
              ),
            ),
          )
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
          child: Icon(Icons.add,size: 35,color: Colors.white,),
        ),
      ),
    );
  }
}
