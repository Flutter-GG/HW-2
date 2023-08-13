import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget(
      {super.key, this.onTap, this.color = Colors.black, this.icon});

  final Function()? onTap;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(25)),
        child: Icon(
          icon,
          color: color,
          size: 30,
        ),
      ),
    );
  }
}
