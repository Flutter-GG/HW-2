import 'package:flutter/material.dart';

extension Screen on BuildContext {
  pushNavigator({required Widget screen}) {
    return Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  popNavigator() {
    return Navigator.pop(this, "back");
  }
}
