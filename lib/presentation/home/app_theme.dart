import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: ThemeData.light()
        .appBarTheme
        .copyWith(backgroundColor: AppColors.brown),
    colorScheme:
        ThemeData.light().colorScheme.copyWith(secondary: AppColors.white),
    primaryColorLight: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

abstract class AppColors {
  static const Color brown = Color.fromARGB(255, 151, 91, 69);
  static const Color orange = Colors.deepOrange;
  static const Color grey = Colors.grey;
  static const Color white = Colors.white;
  static const Color black = Color(0xA0000000);
  static const Color blue = Color(0xFFDFEAF2);
}
