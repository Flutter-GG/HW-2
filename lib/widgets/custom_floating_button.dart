import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../screens/add_new_blog_screen.dart';
import 'cards_of_blogs.dart';

class CustomFloatingButton extends StatefulWidget {
  const CustomFloatingButton({super.key});

  @override
  State<CustomFloatingButton> createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton> {
  TextEditingController idController = TextEditingController();
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await context.pushNavigator(screen: AddBlogScreen());

        setState(() {});
        context.findAncestorStateOfType<CardsOfBlogsState>()?.setState(() {});
      },
      splashColor: Colors.white,
      backgroundColor: AppColors.primeryColor,
      child: const Icon(Icons.add),
    );
  }
}
