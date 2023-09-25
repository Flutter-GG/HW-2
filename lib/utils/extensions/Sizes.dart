import 'package:flutter/material.dart';

extension ScreenSizw on BuildContext {
  get Width => MediaQuery.of(this).size.width;

  get Height => MediaQuery.of(this).size.height;
}
