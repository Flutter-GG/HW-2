import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.buttonText = "defult",
   this.backgroundColor = 0xff010101,
   this.foregroundColor = 0xffFFFFFF,
   this.borderColor = 0xff010101,
   this.onPressed});

  final String buttonText;
  final int backgroundColor;
  final int foregroundColor;
  final int borderColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(backgroundColor),
            foregroundColor: Color(foregroundColor),
            side: BorderSide(color: Color(borderColor)),
            fixedSize: Size(MediaQuery.of(context).size.width - 50, 40)),
        child: Text(buttonText));
  }
}
