import 'package:flutter/material.dart';

final lightThemeData = ThemeData(
  fontFamily: "Poppins",
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xff003813),
  primaryColorLight: const Color(0xff3BB850),
  textTheme: TextTheme(
      bodyLarge: const TextStyle(fontSize: 16, color: Color(0xff003813)),
      bodyMedium: const TextStyle(fontSize: 14, color: Color(0xff003813)),
      bodySmall: const TextStyle(fontSize: 12, color: Color(0xff003813)),
      headline5:
          const TextStyle(fontSize: 16, color: Color(0xff003813), fontWeight: FontWeight.w600)),
);
