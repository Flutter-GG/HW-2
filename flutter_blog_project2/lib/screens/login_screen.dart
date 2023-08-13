// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/button_widget.dart';
import 'package:flutter_blog_project2/components/textfield_widget.dart';
import 'package:flutter_blog_project2/constants/colors.dart';
import 'package:flutter_blog_project2/constants/spaces.dart';
import 'package:flutter_blog_project2/main.dart';
import 'package:flutter_blog_project2/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget('Login'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextfieldWidget(label: 'User ID:', controller: idController),
              Spaces.spaceH5,
              TextfieldWidget(
                  label: 'password:', controller: passwordController),
              Spaces.spaceH20,
              ButtonWidget(
                  text: 'Login',
                  buttonAction: () {
                    for (var object in blogList) {
                      if (int.parse(idController.text) == object.userId &&
                          object.password ==
                              int.parse(passwordController.text)) {
                        userId = int.parse(idController
                            .text); // to use it in my profile screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      }
                    }
                  },
                  buttonColor: AppColors.primary)
            ],
          ),
        ));
  }
}
