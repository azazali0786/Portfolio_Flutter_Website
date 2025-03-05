import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mysite/core/color/colors.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
    static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
      scaffoldBackgroundColor: lightBackgroundColor, // Explicitly set the scaffold background
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        surface: lightBackgroundColor, // Use `surface` instead of `background`
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor, // AppBar background
      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(color: lightTextColor), // Replace `button` with `labelLarge`
      ),
    );

  
  static final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Poppins',
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFF00040F), // Explicitly set the scaffold background
  colorScheme: ColorScheme.dark(
    primary: primaryColor,
    surface: darkBackgroundColor, // Use `surface` instead of `background`
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    labelLarge: TextStyle(color: darkTextColor), // Replace `button` with `labelLarge`
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkBackgroundColor, // AppBar background color
  ),
);

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}
