import 'package:flutter/material.dart';
import 'package:slasher/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF4682B4), // Light Gray
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF333333)), // Charcoal Gray
          bodyMedium: TextStyle(color: Color(0xFF696969)), // Dim Gray
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF4682B4), // Steel Blue
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(
              secondary: const Color(0xFFFFA500), // Orange
              error: const Color(0xFFDC3545), // Red
              onError: const Color(0xFFFFFFFF), // White for error text
              primary: const Color(0xFF4682B4), // Green
            )
            .copyWith(background: const Color(0xFFF5F5F5))
            .copyWith(secondary: const Color(0xFFFFA500)),
      ),
      home: const HomeScreen(),
    );
  }
}
