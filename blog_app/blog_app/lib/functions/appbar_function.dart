import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

appBarFun({required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: ColorsApp.primaryColor,
    title: TextWidget(
      data: title,
      isBlod: true,
      size: 22,
    ),
  );
}
