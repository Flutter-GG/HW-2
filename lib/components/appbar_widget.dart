import 'package:flutter/material.dart';
import 'package:home_work2/constants/b_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {super.key,
      required this.title,
      this.firstIcon,
      this.ActionIcon1,
      this.ActionIcon2,
      this.ActionIcon3,
      this.isActions = false,
      required this.isLeading});
  final String title;
  final Icon? firstIcon;
  final Icon? ActionIcon1;
  final Icon? ActionIcon2;
  final Icon? ActionIcon3;
  final bool isActions;
  final bool isLeading;

  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLeading
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop(),
            )
          : SizedBox(),
      elevation: 0,
      backgroundColor: BColors.primaryColor,
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: BColors.darkTextColor, fontWeight: FontWeight.bold),
      ),
      actions: [
        !isActions
            ? firstIcon!
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ActionIcon1!, ActionIcon2!, ActionIcon3!],
              ),
      ],
    );
  }
}
