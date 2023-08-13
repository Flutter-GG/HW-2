import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key, required this.url, required this.width,
                     required this.height, required this.radius});

  final String url;
  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: Image.network(
                  url, 
                  width: width,
                  height: height,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                ),
              );
  }
}