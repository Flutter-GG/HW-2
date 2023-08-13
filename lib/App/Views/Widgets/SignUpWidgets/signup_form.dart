
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../ViewModels/signup_viewmodel.dart';
import '../../Screens/home_view.dart';
import '../AuthWidgets/custom_button.dart';
import 'custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  final UserViewModel userViewModel;

  const SignUpForm({Key? key, required this.userViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<XFile?>(
          stream: userViewModel.imageStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CircleAvatar(
                radius: 50,
                backgroundImage: FileImage(File(snapshot.data!.path)),
              );
            } else {
              return CircleAvatar(
                radius: 50,
                child: IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: () async {
                    await userViewModel.pickImage();
                  },
                ),
              );
            }
          },
        ),
        const SizedBox(height: 20),
        CustomTextField(
          labelText: 'Name',
          hintText: 'Enter your name',
          onChanged: (value) => userViewModel.userName = value,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          labelText: 'Email',
          hintText: 'Enter your email',
          onChanged: (value) => userViewModel.userEmail = value,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          labelText: 'Password',
          hintText: 'Enter your password',
          isObscure: true,
          onChanged: (value) => userViewModel.userPassword = value,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          labelText: 'Confirm Password',
          hintText: 'Re-enter your password',
          isObscure: true,
          onChanged: (value) => userViewModel.confirmPassword = value,
        ),
        const SizedBox(height: 40),
        CustomButton(
          label: 'Sign Up',
          onPressed: () {
            final result = userViewModel.handleRegistration(context); // Pass context here
            if (result.isSuccess) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomeView()));
            } else {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(result.errorMessage!)));
            }
          },
        ),
      ],
    );
  }
}
