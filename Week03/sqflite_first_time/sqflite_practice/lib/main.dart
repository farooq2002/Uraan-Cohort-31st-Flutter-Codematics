import 'package:flutter/material.dart';
import 'package:sqflite_practice/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQFLITE PRACTICE',
      home: FirstScreen(),
    );
  }
}
