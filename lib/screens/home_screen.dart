import 'package:flutter/material.dart';
import 'package:flutter_application_1/datasets/data-json.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
//import 'package:flutter_application_1/screens/post_screen.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter_application_1/widgets/floating_button_widget.dart';
import 'package:flutter_application_1/widgets/post_view_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorApp.whiteColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person,
              color: ColorApp.blackColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          )
        ],
      ),
      

      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: listUsers.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onLongPress: () {},
                  child: PostViewWidget(post: listUsers[index]));
            },
            //  prototypeItem: const FloatingBarWidget()),
          ),
        
        
      ),),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}
