import 'package:flutter/material.dart';

extension Navigation on BuildContext {

    

  navigateTo(Widget page) {
    String messageValue = "";
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    ).then((value) => {messageValue = value});

    return messageValue;
  }
}
