import 'package:flutter/material.dart';
import 'package:hw2/components/buttons/text_button_widget.dart';
import 'package:hw2/components/text/text_field_widget.dart';
import 'package:hw2/data/global_data.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/home_screen.dart';

  final usedIdController = TextEditingController();
  final passwordController = TextEditingController();
  
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
           TextFieldWidget(preIcon:  const Icon(Icons.mail_outline), hint: "Enter your ID", lable: "User ID",controller: usedIdController,),
           TextFieldWidget(preIcon: const Icon(Icons.lock_outline),hint: "Enter password",lable: "Password",controller: passwordController, ),
          TextButtonWidget(
            text: "Forgot password ?",
            size: 20,
            onPress: () {
              for (var element in listUsers) {
                if(element.userId.toString() == usedIdController.text && element.password == passwordController.text) {
                  context.getNavigator(const HomeScreen());
                }
                setState(() {
                  
                });
              }
            },
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
