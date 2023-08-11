import 'package:blog_app/extention/size.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.path,
      this.isNetwork = false,
      this.width,
      this.height});
  final String path;
  final double? width;
  final double? height;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: !isNetwork
          ? Image.asset(
              path,
              width: width ?? context.getWidth() - 80,
              height: height ?? 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: height ?? 200,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.black,
                      size: 200,
                    ),
                    TextWidget(
                      data: 'Image not found',
                      size: 13,
                    )
                  ],
                ),
              ),
            )
          : Image.network(
              path,
              width: width ?? context.getWidth() - 80,
              height: height ?? 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: height ?? 200,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.black,
                      size: 200,
                    ),
                    TextWidget(
                      data: 'Image not found',
                      size: 13,
                    )
                  ],
                ),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress?.expectedTotalBytes == null) {
                  return child;
                }
                return const CircularProgressIndicator(
                  color: Colors.black,
                );
              },
            ),
    );
  }
}
