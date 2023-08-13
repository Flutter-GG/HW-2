import 'package:flutter/material.dart';

// unfurtunally the navagation extention didn't work for me if you know the error please tell me

extension Naviagator on BuildContext {
  push({required Widget screen}) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  pushAndRemove({required Widget screen}) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: ((context) => screen)), (route) => false);
  }

  pop({required Widget screen}) {
    return Navigator.pop(this);
  }
}
