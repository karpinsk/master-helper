import 'package:flutter/material.dart';

const primaryColor = Color(0xFF4682B4);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  cardColor: const Color(0xFFF7F9FC),
  dividerColor: const Color(0xFFE0E0E0),
  iconTheme: const IconThemeData(color: Color(0xFF4682B4)),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color(0xFF1C1C1E),
  cardColor: const Color(0xFF2E3B4E),
  dividerColor: const Color(0xFF444444),
);
