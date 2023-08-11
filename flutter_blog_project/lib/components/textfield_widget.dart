import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {super.key,
      required this.label,
      this.hintText,
      this.preIcon,
      this.suffiIcon,
      this.width = 300,
      this.height = 50,
      this.labelColor = Colors.black});

  final String label;
  final Color labelColor;
  final double width;
  final double height;
  final String? hintText;
  final Icon? preIcon;
  final Icon? suffiIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:  TextStyle(
              color: labelColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: height,
          width: width,
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: preIcon,
                suffixIcon: suffiIcon,
                hintText: hintText,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff042628)),
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ],
    );
  }
}
