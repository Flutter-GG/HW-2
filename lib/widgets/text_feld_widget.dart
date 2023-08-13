import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/utils/size_extension.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      this.obscureText,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.labelName,
      this.InputType,
      this.maxLines,
      this.height,
      this.circular = 10,
      this.width,
      this.fontSize = 14,
      this.textController,
      this.onSubmitted});

  final bool? obscureText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? labelName;
  final TextInputType? InputType;
  final int? maxLines;
  final TextEditingController? textController;
  final Function(String)? onSubmitted;
  final double? height;
  final double circular;
  final double? width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: SizedBox(
        width: context.getWidth(),
        height: height,
        child: TextField(
          keyboardType: InputType,
          maxLines: maxLines,
          obscureText: obscureText ?? false,
          onSubmitted: onSubmitted,
          controller: textController,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: ColorApp.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(circular),
              borderSide:
                  const BorderSide(width: 2, color: ColorApp.blackColor),
            ),
            filled: true,
            fillColor: ColorApp.whiteColor,
            label: labelName,
          ),
        ),
      ),
    );
  }
}
