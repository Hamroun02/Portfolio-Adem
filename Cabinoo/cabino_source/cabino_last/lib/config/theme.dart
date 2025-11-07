import 'package:flutter/material.dart';

class AppTheme {
  // Primary colors
  static const Color primaryBlue = Color(0xFF1A73E8);
  static const Color accentGold = Color(0xFFFFAB40);
  static const Color backgroundGrey = Color(0xFFF5F7FA);
  static const Color textDark = Color(0xFF333333);
  static const Color textLight = Color(0xFF757575);

  // Light theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: backgroundGrey,
    colorScheme: ColorScheme.light(
      primary: primaryBlue,
      secondary: accentGold,
      background: backgroundGrey,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: textDark,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: textDark,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: textDark,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: textDark),
      bodyMedium: TextStyle(color: textDark),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Colors.white,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
    ),
  );
}