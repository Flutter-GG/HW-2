import 'package:flutter/material.dart';

//a widget for returning any images

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.imgPath,
      this.isNetwork =
          true, //my images mostly will be from the network so that is the default
      this.imgWidth,
      this.imgHeight});
  final String imgPath;
  final bool isNetwork;
  //opetional parametors because i don't want to change the size of the image always
  final double? imgWidth;
  final double? imgHeight;

  @override
  Widget build(BuildContext context) {
    /*if the variable isNetwork true then call image.network for images from the internet 
    else call image.asset for images from the asset*/
    return isNetwork
        ? Image.network(
            imgPath,
            width: imgWidth,
            height: imgHeight,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.error_outline_rounded,
                size: imgHeight,
              );
            },
          )
        : Image.asset(
            imgPath,
            width: imgWidth,
            height: imgHeight,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.error_outline_rounded,
                size: imgHeight,
              );
            },
          );
  }
}
