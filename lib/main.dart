import 'package:flutter/material.dart';
import 'package:product_app/theme/light_theme.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData,
      home: const HomeScreen(),
    );
  }
}
