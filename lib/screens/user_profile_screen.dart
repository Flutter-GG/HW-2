import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../app_style_files/spaces.dart';
import '../widgets/custom_author_icon.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 20, color: AppColors.white),
                  ),
                ),
              ),
              Spaces.spaceH15,
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightGrey,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularIcon(
                        height: 30,
                        width: 30,
                        url:
                            "https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg",
                        radius: 15,
                      ),
                      Spaces.spaceW15,
                      Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 19, color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
