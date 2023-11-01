import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/sizes.dart';

class FOutlinedButtonTheme{
  FOutlinedButtonTheme._();

  // Light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: fSecondaryColor,
      side: const BorderSide(color: fSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: fButtonHeight),
    ),
  );

  // Dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: fWhiteColor,
      side: const BorderSide(color: fWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: fButtonHeight),
    ),
  );

}