import 'package:flutter/material.dart';

extension CustomNavigation on BuildContext {
  push({required Widget screen}) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // pop(){
  //   return Navigator.pop(context);
  // }
}
