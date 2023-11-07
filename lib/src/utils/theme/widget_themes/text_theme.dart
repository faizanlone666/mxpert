import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/constants/colors.dart';

class FTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: fDarkColor),
      displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700,color: fDarkColor),
      displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700,color: fDarkColor),
      headlineSmall: GoogleFonts.poppins(fontSize: 22.0, fontWeight: FontWeight.w400,color: fDarkColor),
      headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600,color: fDarkColor),
      titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600,color: fDarkColor),
      bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: fDarkColor),
      bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: fDarkColor));
  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: fWhiteColor),
      displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700,color: fWhiteColor),
      displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700,color: fWhiteColor),
      headlineSmall: GoogleFonts.poppins(fontSize: 22.0, fontWeight: FontWeight.w400,color: fWhiteColor),
      headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600,color: fWhiteColor),
      titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600,color: fWhiteColor),
      bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: fWhiteColor),
      bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: fWhiteColor));
}
