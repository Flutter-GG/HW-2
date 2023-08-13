import 'package:flutter/material.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/utils/page_size.dart';
import 'package:hw_2/widget/Text_widget.dart';

class IconsPostsWidget extends StatelessWidget {
 const IconsPostsWidget({
    super.key,
    required this.icon,
    required this.title,
    this.textColor,
  });

  final IconData icon;
  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        PageSize.spaceW8,
        TextWidget(
          title: title,
          textColor: ColorsApp.blackColor,
          fontSize: 20,
        ),
      ],
    );
  }
}
