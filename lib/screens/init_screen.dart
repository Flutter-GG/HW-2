import 'package:flutter/material.dart';
import 'package:hw2/components/buttons/button.dart';
import 'package:hw2/components/general_components/custom_clip_path.dart';
import 'package:hw2/components/text/text_widget.dart';
import 'package:hw2/constants/app_styles.dart';
import 'package:hw2/constants/constants.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/login_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/newback.jpg"),
                Padding(
                  padding: const EdgeInsets.only(top: 450),
                  child: ClipPath(
                    clipper: CustomClipPath(), // show a wave curve
                    child: Container(
                      color: Colors.white,
                      height: 160,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  const TextWidget(text: "Welcome", isBold: true),
                  height8,
                  const TextWidget(
                    text: "sing up to get all features",
                  ),
                  height56,
                  Button(
                    text: "Get Started",
                    borderRadius: 20,
                    onPress: () {
                      context.getNavigator(const LoginScreen());
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
