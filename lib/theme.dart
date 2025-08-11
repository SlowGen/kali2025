import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class KaliTheme {
  static ThemeData get themeData {
    return ThemeData(
      primaryColor: Colors.deepOrange,
      scaffoldBackgroundColor: Colors.black,
      typography: Typography.material2021(
        black: GoogleFonts.firaCodeTextTheme(),
        white: GoogleFonts.firaCodeTextTheme(),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: const WidgetStatePropertyAll(
            Color.fromARGB(255, 219, 194, 174),
          ),
          minimumSize: const WidgetStatePropertyAll(Size(200, 75)),
          fixedSize: const WidgetStatePropertyAll(Size(200, 75)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          side: const WidgetStatePropertyAll(
            BorderSide(
              color: Color.fromARGB(255, 92, 80, 75),
              width: 6,
            ),
          ),
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
