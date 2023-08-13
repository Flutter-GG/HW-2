import 'package:best_places/View/widget/color.dart';
import 'package:flutter/material.dart';

class BaseAppBar {
  static getAppBar(String title) {
    return AppBar(
        backgroundColor: btnColor,
        elevation: 0,
        title: Text(title),
        leading: const BackButton(color: Color.fromARGB(255, 255, 254, 254)),
      
    );
  }
}