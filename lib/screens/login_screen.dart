import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/ui_class/spaces.dart';
import 'package:flutter_application_1/widgets/text_feld_widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: ColorApp.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorApp.whiteColor,
        elevation: 0,

      ),
      body:  SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFieldWidget(obscureText: false,
            hintText: "Enter ID",
            labelName: Text("UserName or ID"),
          ),
          Spaces.spacesH24,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorApp.blackColor, 
              fixedSize: const Size(100, 40),
            ),
            onPressed:() {},
            child: const TextWidget(
              text:"LogIn",
              textColor: ColorApp.whiteColor,)),
          
        ],),
),

    );
  }
}