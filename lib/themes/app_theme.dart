import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF8A2BE2),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: GoogleFonts.urbanistTextTheme(
      ThemeData.light().textTheme,
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF8A2BE2),
      secondary: Color(0xFFFF00FF),
    ),
  );

  static final BoxDecoration backgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/background.png'),
      fit: BoxFit.cover,
    ),
  );

  static final BoxDecoration glassmorphismDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.1),
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: Colors.white.withOpacity(0.2),
      width: 1,
    ),
  );
}
