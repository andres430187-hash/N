import 'package:flutter/material.dart';

class NeshColors {
  static const Color black = Color(0xFF000000);
  static const Color surface = Color(0xFF121212);
  static const Color surfaceAlt = Color(0xFF1E1E1E);
  static const Color neon = Color(0xFF00FF66);
  static const Color neonDim = Color(0xFF00CC52);
  static const Color neonGlow = Color(0x3300FF66);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB3B3B3);
  static const Color error = Color(0xFFFF3333);
}

class NeshTheme {
  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: NeshColors.black,
        colorScheme: const ColorScheme.dark(
          primary: NeshColors.neon,
          surface: NeshColors.surface,
          error: NeshColors.error,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: NeshColors.surface,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: NeshColors.neon,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: NeshColors.surfaceAlt,
          labelStyle: const TextStyle(color: NeshColors.textSecondary),
          hintStyle: TextStyle(color: NeshColors.textSecondary.withOpacity(0.5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: NeshColors.neon, width: 1.5),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: NeshColors.surface,
          selectedItemColor: NeshColors.neon,
          unselectedItemColor: NeshColors.textSecondary,
        ),
      );
}
