import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.titleColor = Colors.white,
      this.bgColor = Colors.black});
  final String title;
  final Color? titleColor;
  final Color? bgColor;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: titleColor)),
      backgroundColor: bgColor,
    );
  }
}
