import 'package:flutter/material.dart';

abstract class Themes {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.blue,
      secondary: Colors.redAccent,
      tertiary: Colors.blueGrey,
      background: Colors.deepPurple,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurpleAccent,
      centerTitle: true,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Colors.black12,
      secondary: Colors.blue,
      tertiary: Colors.blueGrey,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      centerTitle: true,
    ),
  );
}
