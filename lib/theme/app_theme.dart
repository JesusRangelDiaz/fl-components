import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.greenAccent;

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primary,

      //App bar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Primary color
      primaryColor: primary,

      //AppBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),

      //TextButton theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}
