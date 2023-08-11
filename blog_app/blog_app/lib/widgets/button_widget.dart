import 'package:blog_app/extention/size.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onPressed, required this.text});
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsApp.blueColor),
            fixedSize:
                MaterialStateProperty.all(Size(context.getWidth() - 70, 50)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: TextWidget(
          data: text,
          textColor: Colors.white,
        ));
  }
}
