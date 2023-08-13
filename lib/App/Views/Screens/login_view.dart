
import 'package:flutter/material.dart';
import '../../utilities/extensions/colors.dart';
import '../Widgets/AuthWidgets/login_form.dart';

class LogInView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        elevation: 0,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LoginForm(
          emailController: emailController,
          passwordController: passwordController,
        ),
      ),
    );
  }
}
