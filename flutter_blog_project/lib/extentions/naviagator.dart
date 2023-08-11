import 'package:flutter/material.dart';

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
