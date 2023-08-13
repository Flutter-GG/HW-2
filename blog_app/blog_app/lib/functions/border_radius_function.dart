import 'package:flutter/cupertino.dart';

BorderRadiusGeometry? borderFun({
  double topLeft = 7,
  double topRight = 35,
  double bottomRight = 7,
  double bottomLeft = 35,
}) {
  return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomRight: Radius.circular(bottomRight),
      bottomLeft: Radius.circular(bottomLeft));
}
