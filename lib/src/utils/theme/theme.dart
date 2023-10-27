import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/utils/theme/widget_themes/test_theme.dart';

class FAppTheme {

  FAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: FTextTheme.lightTextTheme
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: FTextTheme.darkTextTheme
  );
}
