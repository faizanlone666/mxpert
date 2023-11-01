import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/colors.dart';

class FTextFormFieldTheme {
  FTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: fSecondaryColor,
      floatingLabelStyle: TextStyle(color: fSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: fSecondaryColor),
      ));


  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: fPrimaryColor,
      floatingLabelStyle: TextStyle(color: fPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: fPrimaryColor),
      ));
}