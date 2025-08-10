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
        colorScheme: ColorScheme.light(),
      ),
      // textTheme: const TextTheme(
      //   headlineLarge: TextStyle(
      //     color: Color.fromARGB(255, 32, 40, 44),
      //     fontSize: 48,
      //     fontWeight: FontWeight.bold,
      //     fontFamily: 'RobotoMono',
      //   ),
      //   bodyLarge: TextStyle(
      //     color: Color.fromARGB(255, 32, 40, 44),
      //     fontSize: 16,
      //     fontFamily: 'RobotoMono',
      //   ),
      // ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
    );
  }
}
