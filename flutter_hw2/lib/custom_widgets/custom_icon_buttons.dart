import 'package:flutter/material.dart';

class CustomIconButtons extends StatelessWidget {
  const CustomIconButtons({super.key, this.onPressed, required this.iconButton});
  final Function()? onPressed;
  final IconData iconButton;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(iconButton));
  }
}
