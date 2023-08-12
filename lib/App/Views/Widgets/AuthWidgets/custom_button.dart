import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utilities/extensions/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = CustomColor.primary,
    this.textColor = CustomColor.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          minimumSize: const Size(double.infinity, 60),
          side: const BorderSide(
            color: CustomColor.black,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.montserrat(fontSize: 16, color: textColor),
        ),
      ),
    );
  }
}
