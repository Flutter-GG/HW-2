import 'package:flutter/material.dart';

/* this file is my custom extension */

extension Width on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
