import 'package:flutter/material.dart';
import 'package:hw2/components/buttons/button.dart';
import 'package:hw2/components/buttons/text_button_widget.dart';
import 'package:hw2/components/general_components/custom_clip_path.dart';
import 'package:hw2/components/buttons/choice_chip_widget.dart';
import 'package:hw2/components/general_components/login_form.dart';
import 'package:hw2/components/general_components/singup_form.dart';

import 'package:hw2/constants/constants.dart';
import 'package:hw2/data/global_data.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    choiceType ??= "Sign Up";
    return Scaffold(
        resizeToAvoidBottomInset:
            false, // to avoid problem when typing in a keyboard
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              child: Image.asset("assets/images/newback.jpg"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 320),
              height: AppLayout.getSize(context).height,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: ClipPath(
                clipper: CustomClipPath(), // show a wave curve
                child: Container(
                  color: Colors.white,
                  height: 160,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                height200,
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // ! have to check later
                    children: [
                      ChoiceChipWidget(), // Sing up & Login buttons
                    ],
                  ),
                ),
                height24,
                SizedBox(
                  height: 360,
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      Container(
                        child: (choiceType == "Sign Up"
                            ? const SingupForm()
                            : const LoginForm()),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 160,
                  // color : Colors.yellow,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButtonWidget(
                          text: "Enter as a Guest",
                          size: 20,
                          onPress: () {},
                          color: Colors.black54,
                        ),
                        Button(
                            text: "$choiceType",
                            onPress: () {
                              for (var element in listUsers) {
                                if (element.userId.toString() ==
                                        usedIdController.text &&
                                    element.password ==
                                        passwordController.text) {
                                          user = element; 
                                  context.getNavigator(const HomeScreen());
                                }
                                setState(() {});
                              }
                            },
                            size: 25,
                            isBold: true),
                      ]),
                )
              ],
            )
          ],
        )));
  }
}
