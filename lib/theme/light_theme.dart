import 'package:flutter/material.dart';

const _darkGreenColor = Color(0xff003813);
const _greenColor = Color(0xff3BB850);

final lightThemeData = ThemeData(
  fontFamily: "Poppins",
  scaffoldBackgroundColor: Colors.white,
  primaryColor: _darkGreenColor,
  primaryColorLight: _greenColor,
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: _darkGreenColor),
      bodyMedium: TextStyle(fontSize: 14, color: _darkGreenColor),
      bodySmall: TextStyle(fontSize: 12, color: _darkGreenColor),
      titleLarge: TextStyle(fontSize: 20, color: _darkGreenColor, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(fontSize: 16, color: _darkGreenColor, fontWeight: FontWeight.w600)),
);
