import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slasher/home/home.dart';
import 'package:slasher/specification/specification_bloc.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  if (Platform.isWindows) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SpecificationBloc()..add(const SpecificationEvent.detailsLoaded()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF4682B4), // Steel Blue
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Color(0xFF333333)), // Charcoal Gray
            bodyMedium: TextStyle(color: Color(0xFF696969)), // Dim Gray
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Color(0xFF4682B4), // Steel Blue
            textTheme: ButtonTextTheme.primary,
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            error: const Color(0xFFDC3545), // Red
            primary: const Color(0xFF4682B4), // Steel Blue
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
