import 'package:flutter/material.dart';

extension NavigatorExten on BuildContext {
  push({required Widget path}) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => path));
  }

  pop() {
    return Navigator.of(this).pop();
  }

  pushAndRemove({required Widget path}) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => path), (route) => false);
  }
}