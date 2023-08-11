import 'package:flutter/material.dart';

extension Width on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
