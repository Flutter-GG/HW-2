import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.isBlod = false,
      this.size = 13,
      this.textColor = Colors.black,
      this.maxLines = 2});
  final String text;
  final bool isBlod;
  final double size;
  final Color textColor;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: isBlod ? FontWeight.bold : FontWeight.normal,
        fontSize: size,
        color: textColor,
      ),
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}