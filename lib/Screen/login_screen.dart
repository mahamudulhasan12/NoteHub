import 'package:flutter/material.dart';
import 'package:notehub/Screen/home_screen.dart';
import 'package:notehub/Screen/register_screen.dart';
import 'package:notehub/models/user_model.dart';
import 'package:notehub/widgets/custom_button.dart';
import 'package:notehub/widgets/custom_container.dart';
import 'package:notehub/widgets/custom_text.dart';
import 'package:notehub/widgets/custom_textfield.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email =TextEditingController();
  TextEditingController passworld = TextEditingController();
  bool isChack = false;
  bool isFound = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 90),
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              CustomContainer(height: 120, width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: BoxBorder.all(width: 4,color: Colors.grey.shade400)
                  ),
                  child:Image.network(
                    // height: 20,
                    // width: 20,
                      color: Colors.grey,
                      "https://cdn-icons-png.flaticon.com/128/7710/7710521.png"
                  )
              ),
              Positioned(
                right: 100,
                top: 70,
                child: CustomContainer(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      border: BoxBorder.all(width: 2,color: Colors.white)
                    ),
                    child: Icon(Icons.important_devices_rounded,size: 20,color: Colors.white,
                ),
              )
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              CustomText(text: "Wellcome Back👋",textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              CustomText(text: "please Login to Your acount",textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Email",textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              CustomTextfield(controller: email, hintText: 'Enter your email',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                outlineBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                colors: Colors.black12,
                prefixIcon: Icon(Icons.email_outlined),
              )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Password",textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              CustomTextfield(controller: passworld, hintText: 'Enter your password',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                sufixIcon: Icon(Icons.remove_red_eye),
                outlineBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                inputType: TextInputType.text,
                colors: Colors.black12,
                prefixIcon: Icon(Icons.lock),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value:(isChack) , onChanged: (value){
                setState(() {
                  isChack = value!;
                });
              }),
              Spacer(),
              InkWell(
                child: CustomText(text: "Forget Password?",textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline,
                  color: Colors.redAccent
                ),),
                onTap: (){

                },
              ),
            ],
          ),
          SizedBox(height: 10,),
          CustomButton(height: 50, width: 100, 
              onPressed: (){
            for(var user in users){
              if(user.email == email.text && user.password == passworld.text){
                isFound =true;
                break;
              }
            }
            if(isFound){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Wrong email or password")),
              );
            }
              },
              buttonStyle:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: CustomText(text: "Login",textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,color: Colors.white
              ),)
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CustomText(text: "Don't have an acount?",textStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10,),
              InkWell(
                child: CustomText(text: "Register",textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    // decoration: TextDecoration.underline,
                    color: Colors.blue
                ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
              ),
            ],
          ),
        ],
      )
    );
  }
}
