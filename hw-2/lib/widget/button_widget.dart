import 'package:flutter/material.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/widget/Text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });
  
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsApp.blueColo),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
      ),
      child: TextWidget(
        title: title,
        textColor: ColorsApp.blackColor,
        fontSize: 20,
      ),
    );
  }
}
