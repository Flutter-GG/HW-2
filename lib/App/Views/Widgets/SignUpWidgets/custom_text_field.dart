import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isObscure;
  final Function(String)? onChanged;

  const CustomTextField({super.key, 
    required this.labelText,
    required this.hintText,
    this.isObscure = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: onChanged,
        obscureText: isObscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
