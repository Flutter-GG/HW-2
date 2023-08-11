import 'package:flutter/material.dart';

import '../ui_classes/colors.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {super.key,
      required this.hintText,
      this.preIcon,
      this.maxLines = 1,
      this.textController,
      this.onSubmitted});
  final String hintText;
  final Icon? preIcon;
  final int maxLines;
  TextEditingController? textController;
  Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      onSubmitted: onSubmitted,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: preIcon,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: ColorsApp.blueColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: ColorsApp.blueColor)),
      ),
    );
  }
}
