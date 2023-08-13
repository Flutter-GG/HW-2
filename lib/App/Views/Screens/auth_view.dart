import 'package:blog_app/App/Views/Screens/signup_view.dart';
import 'package:blog_app/App/utilities/extensions/strings.dart';
import 'package:flutter/material.dart';
import '../../utilities/extensions/colors.dart';
import '../Widgets/AuthWidgets/custom_button.dart';
import 'login_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/BLOGD.png'),
            const SizedBox(height: 20),
            "Personal Blogging Partner".montserrat,
            const SizedBox(height: 50),
            Image.asset('assets/images/Grad.png'),
            const SizedBox(height: 50),
            CustomButton(
              label: 'Login',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInView()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: "New here?".montserrat,
            ),
            CustomButton(
              label: 'Register',
              backgroundColor: CustomColor.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpView()));
              },
            )
          ],
        ),
      ),
    );
  }
}
