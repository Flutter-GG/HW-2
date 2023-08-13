// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.textFieldHint = "Hint unavailable!",
      required this.controller});

  final String textFieldHint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 100,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: textFieldHint,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
