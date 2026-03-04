import 'package:flutter/material.dart';

class CustomTheme {
  static final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.pink,
    brightness: Brightness.light,
  );

  static final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.pinkAccent,
    brightness: Brightness.dark,
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: _lightColorScheme,
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: _darkColorScheme,
    useMaterial3: true,
  );
}