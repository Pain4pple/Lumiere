import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(primary: Colors.blue, secondary: Colors.orange, surface: Colors.white),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue, foregroundColor: Colors.white, elevation: 2),
    textTheme: _poppinsTextTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    inputDecorationTheme: _inputDecorationTheme,
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 206, 255, 30),
    scaffoldBackgroundColor: const Color.fromARGB(255, 15, 12, 21),
    colorScheme: ColorScheme.dark(primary: Colors.blueGrey, secondary: Color.fromARGB(255, 206, 255, 30), surface: Colors.black),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey, foregroundColor: Colors.white, elevation: 2),
    textTheme: _poppinsTextTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    inputDecorationTheme: _inputDecorationTheme,
  );

  // Shared Google Font Text Theme with CopyWith for Custom Styling
  static final TextTheme _poppinsTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    headlineLarge: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
    bodyLarge: GoogleFonts.poppins(fontSize: 16),
    bodyMedium: GoogleFonts.poppins(fontSize: 14),
    labelLarge: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
  );

  // Shared TextField Theme
  static final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(border: InputBorder.none);

  // Shared Button Theme
  static final ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
