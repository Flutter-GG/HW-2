import 'package:flutter/material.dart';
import '../../ViewModels/signup_viewmodel.dart';
import '../Widgets/SignUpWidgets/signup_form.dart';


class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final UserViewModel _userViewModel = UserViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpForm(userViewModel: _userViewModel),
    );
  }

  @override
  void dispose() {
    _userViewModel.dispose();
    super.dispose();
  }
}
