import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/sizes.dart';

class FElevatedButtonTheme{

  FElevatedButtonTheme._();

  //Light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: fWhiteColor,
      backgroundColor: fSecondaryColor,
      side: const BorderSide(color: fSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  //Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: fSecondaryColor,
      backgroundColor: fWhiteColor,
      side: const BorderSide(color: fSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}