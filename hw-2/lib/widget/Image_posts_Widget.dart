import 'package:flutter/material.dart';

class ImagePostsWidget extends StatelessWidget {
  const ImagePostsWidget({
    super.key,
    required this.src,
    this.heightContainer,
  });

  final String src;
  final double? heightContainer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightContainer,
      child: Image.network(
        src,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
