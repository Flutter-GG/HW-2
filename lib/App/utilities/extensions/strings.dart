import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CustomFont on String {
  Text get montserrat => Text(
        this,
        style: GoogleFonts.montserrat(),
      );
}
