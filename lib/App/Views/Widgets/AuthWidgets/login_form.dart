import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utilities/user_state.dart';
import '../../Screens/home_view.dart';
import '../SignUpWidgets/custom_text_field.dart';
import 'custom_button.dart';


class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    required this.emailController,
    required this.passwordController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(
          labelText: 'Email',
          hintText: 'Enter your email',
          onChanged: (value) {
            emailController.text = value;
          },
        ),
        const SizedBox(height: 20),
        CustomTextField(
          labelText: 'Password',
          hintText: 'Enter your password',
          isObscure: true,
          onChanged: (value) {
            passwordController.text = value;
          },
        ),
        const SizedBox(height: 40),
        CustomButton(
          label: 'Login',
          onPressed: () {
            final email = emailController.text;
            final password = passwordController.text;
            _handleLogin(context, email, password);
          },
        ),
      ],
    );
  }

  Future<void> _handleLogin(BuildContext context, String email, String password) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final user = Provider.of<UserState>(context, listen: false).findUserByEmail(email);

    if (user.password == password) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      );
    } else {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('Login failed! Please check your email and password.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
