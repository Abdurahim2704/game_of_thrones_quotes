import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sealed class CustomThemes {
  static final ThemeData gotTheme =
      ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyMedium: CustomTextStyles.ancientFontStyle.copyWith(fontSize: 14),
      bodyLarge: CustomTextStyles.ancientFontStyle,
    ),
  );
}

sealed class CustomTextStyles {
  static const ancientFontStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w900, fontFamily: "GameOfThrones");
  static TextStyle handwritingStyle =
      GoogleFonts.charm(fontSize: 16, fontWeight: FontWeight.w600);
}
