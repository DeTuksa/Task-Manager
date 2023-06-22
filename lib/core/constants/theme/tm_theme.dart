import 'package:flutter/material.dart';

class TMTheme {

  static ThemeData theme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      background: Color(0xFFD8DEF3),
      primary: Color(0xFF9C2CF3),
      secondary: Color(0xFF3A48F8),
      error: Colors.red,
      onPrimary: Color(0xFF3A48F8),
      onSecondary: Color(0xFF9C2CF3),
      onError: Colors.white,
      onBackground: Color(0xFF2E3A59),
      surface: Color(0xFFD8DEF3),
      onSurface: Color(0xFF2E3A59),
    )
  );
}