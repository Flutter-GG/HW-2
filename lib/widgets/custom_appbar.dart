import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
          iconTheme: IconThemeData(color: AppColors.grey),
          title: Text(title, style: TextStyle( color: AppColors.grey, fontSize: 27),),
          shadowColor: AppColors.grey,
          backgroundColor: AppColors.lightGrey,
        );
  }
}