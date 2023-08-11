import 'package:flutter/material.dart';

extension num on BuildContext {
  gitpush(StatefulWidget a) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => a));
  }
}