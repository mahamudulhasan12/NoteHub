import 'package:flutter/material.dart';
import 'package:notehub/Screen/login_screen.dart';
import 'package:notehub/data/users_data.dart';
import 'package:notehub/models/user_model.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 50),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              CustomText(text: "Register Account",textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
              CustomText(text: "Please fillep the information below",textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          SizedBox(height: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Name",textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              CustomTextfield(controller: name, hintText: 'Enter your Name',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                outlineBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                colors: Colors.black12,
                prefixIcon: Icon(Icons.person),
              )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Phone Number",textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              CustomTextfield(controller: phone, hintText: 'Enter your phone number',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                outlineBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                inputType: TextInputType.number,
                colors: Colors.black12,
                prefixIcon: Icon(Icons.phone),
              )
            ],
          ),
          SizedBox(height: 10,),
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
                inputType: TextInputType.emailAddress,
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
              CustomTextfield(controller: password, hintText: 'Enter your password',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                outlineBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                inputType: TextInputType.visiblePassword,
                colors: Colors.black12,
                prefixIcon: Icon(Icons.lock),
                sufixIcon: Icon(Icons.remove_red_eye),
              )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Confirm password",textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              CustomTextfield(controller: confirmPass, hintText: 'Confirm your password',hintStyle: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
              ),
                outlineBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.2,color: Colors.grey)
                ),
                colors: Colors.black12,
                prefixIcon: Icon(Icons.lock),
                sufixIcon: Icon(Icons.remove_red_eye),
              )
            ],
          ),
          SizedBox(height: 10,),
          CustomButton(height: 50, width: 100,
              onPressed: (){
            users.add(
              UsersData(
                name: name.text,
                phone: phone.text,
                email: email.text,
                password: password.text,
              )
            );
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              buttonStyle:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: CustomText(text: "Register",textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,color: Colors.white
              ),)
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CustomText(text: "Already have and account?",textStyle: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10,),
              InkWell(
                child: CustomText(text: "Login",textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    // decoration: TextDecoration.underline,
                    color: Colors.blue
                ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
