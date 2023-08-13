import 'package:flutter/material.dart';
import 'package:hw_2/utils/colors_app.dart';

import '../widget/Text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primeryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/img.png'),
          const Center(
            child: TextWidget(
              title: "Oops!!!",
              textColor: ColorsApp.blackColor,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
