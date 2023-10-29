import 'package:flutter/material.dart';
import 'package:mxpert/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:mxpert/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:mxpert/src/utils/theme/widget_themes/text_theme.dart';

class FAppTheme {
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: FTextTheme.lightTextTheme,
      outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: FTextTheme.darkTextTheme,
      outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme);
}
