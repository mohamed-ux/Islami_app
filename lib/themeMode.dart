import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xFFB7935F);
  static Color primaryDarkColor = Color(0xFF141A2E);
  static Color secondryDarkColor = Color(0xFFFACC1D);
  static Color secondryColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      dividerColor: primaryColor,
      colorScheme: ColorScheme(
        primary:primaryColor,
        brightness: Brightness.light,
        onPrimary: primaryColor,
        secondary: primaryColor,
        onSecondary: secondryColor,
        error: primaryColor, onError: primaryColor,
        background: primaryColor,
        onBackground: primaryColor,
        surface: Colors.black,
        onSurface: primaryColor ,

      ),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: secondryColor,
              fontFamily: 'ElMessiri'),
          bodyMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: secondryColor,
              fontFamily: 'ElMessiri'),
      ));

  static ThemeData darkTheme = ThemeData(
dividerColor: secondryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: secondryDarkColor,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'ElMessiri'),
        bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'ElMessiri'),
      ),
    colorScheme: ColorScheme(
    primary:primaryDarkColor,
    brightness: Brightness.dark,
    onPrimary: primaryDarkColor,
    secondary: secondryDarkColor,
    onSecondary: secondryDarkColor,
    error: primaryColor, onError: primaryColor,
    background: primaryColor,
    onBackground: primaryColor,
    surface: Colors.white,
    onSurface: primaryColor ,
  ));
}
