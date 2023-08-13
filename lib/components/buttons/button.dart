import 'package:flutter/material.dart';
import 'package:hw2/components/text/text_widget.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      this.isligt = false,
      this.onPress,
      this.size = 20,
      this.borderRadius = 15,
      this.hightButton, this.isBold = false,  this.color = Colors.black,
      // this.fgColor,
      // this.bgColor
      });
  final String text;
  final bool isligt;
  final bool isBold;
  // final Color? fgColor;
  // final Color? bgColor;
  final double size;
  final double borderRadius;
  final Function()? onPress;
  final double? hightButton;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor:  isligt? Colors.white : Colors.orange,
        // foregroundColor: !isligt ? Colors.green : Colors.pink,
        fixedSize: const Size(180, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: TextWidget(
        text: text,
        size: size,
        isBold: isBold,
        color: color ,
      ),
    );
  }
}
