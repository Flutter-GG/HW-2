import 'package:flutter/material.dart';
import 'package:flutter_blog_project/constants/colors.dart';

appBarWidget(
  String title,
) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(fontSize: 23),
    ),
    backgroundColor: AppColors.primary,
  );
}
