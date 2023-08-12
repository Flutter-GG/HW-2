import 'package:flutter/material.dart';

/* this file is my custom profile rounded images */

class CustomRoundedImages extends StatelessWidget {
  const CustomRoundedImages(
      {super.key, this.roundedImage, this.width = 20, this.height = 20});
  final String? roundedImage;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.network('$roundedImage',
          width: width, height: height, fit: BoxFit.fill),
    );
  }
}
