import 'package:flutter/material.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/widget/Text_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key,
      required this.title,
      this.icon,
      this.colorIconTheme,
      this.onPressed});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String title;
  final IconData? icon;
  final Color? colorIconTheme;
  final Function()? onPressed;

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(color: ColorsApp.blackColor),
      title: TextWidget(
        title: title,
        textColor: ColorsApp.blackColor,
        fontSize: 25,
      ),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: ColorsApp.blackColor,
          ),
        ),
      ],
      backgroundColor: ColorsApp.whiteColor,
    );
  }
}
