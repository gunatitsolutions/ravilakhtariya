import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      canvasColor: AppColors.whiteColor,
      scaffoldBackgroundColor: AppColors.grayColor,
    );
  }

  static ThemeData darkTheme() => ThemeData.dark();
}
