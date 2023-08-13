import 'package:blog_app/components/custom_button.dart';
import 'package:blog_app/components/custom_text_field.dart';
import 'package:blog_app/extensions/navigation.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/views/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController? controllerId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              CustomTextField(
                controller: controllerId!,
                textFieldHint: "Enter Id",
              ),
              CustomButton(
                buttonText: "login",
                onPressed: () {
                  if (int.tryParse(controllerId!.text) != null) {
                    userId = int.parse(controllerId!.text);
                  }
                  context.navigateTo(const MainView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
