import 'package:flutter/material.dart';

class CustomBorderRadiusImages extends StatelessWidget {
  const CustomBorderRadiusImages(
      {super.key, this.borderRadiusImage, this.width = 80, this.height = 50});
  final String? borderRadiusImage;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: Image.network('$borderRadiusImage',
          width: width, height: height, fit: BoxFit.cover),
    );
  }
}
