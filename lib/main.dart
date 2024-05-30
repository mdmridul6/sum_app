import 'package:flutter/material.dart';
import 'package:sum_app/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Calculator(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.deepOrange, foregroundColor: Colors.white),
          inputDecorationTheme: const InputDecorationTheme(

            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent),
            ),
            labelStyle: TextStyle(color: Colors.orangeAccent),
            hintStyle: TextStyle(color: Colors.white10),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white),
          )),
    );
  }
}
