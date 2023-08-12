
import 'package:flutter/material.dart';
import '../../ViewModels/authentication_viewmodel.dart';
import '../../utilities/extensions/colors.dart';
import '../Widgets/AuthWidgets/custom_button.dart';
import 'package:provider/provider.dart';



class LogInView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        elevation: 0,
        title:const  Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              controller: emailController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 40),
            CustomButton(
              label: 'Login',
              onPressed: () async {
                final bool isSuccess = await Provider.of<AuthViewModel>(context, listen: false)
                  .login(emailController.text, passwordController.text);
                
                if (isSuccess) {
                  // Navigate to another page or show a success message
                } else {
                  // Show an error message
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
