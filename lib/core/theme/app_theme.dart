import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryGold = Color(0xFFD4AF37); // Updated to #d4af37
  static const Color backgroundBlack = Color(0xFF000000);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundBlack,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryGold,
        brightness: Brightness.dark,
        surface: backgroundBlack,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: primaryGold,
          fontSize: 56,
          fontWeight: FontWeight.w900,
          letterSpacing: -1,
        ),
        titleMedium: TextStyle(
          color: primaryGold,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        bodyLarge: TextStyle(color: primaryGold),
        bodyMedium: TextStyle(color: primaryGold),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundBlack,
        foregroundColor: primaryGold,
        elevation: 0,
      ),
    );
  }
}
