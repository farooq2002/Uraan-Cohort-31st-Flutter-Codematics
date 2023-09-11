import 'package:flutter/material.dart';
import 'package:flutter_essential_widgets/screens/alignmentfractional.dart';
import 'package:flutter_essential_widgets/screens/alignwidget.dart';
import 'package:flutter_essential_widgets/screens/container_widget.dart';
import 'package:flutter_essential_widgets/screens/listview.dart';
import 'package:flutter_essential_widgets/screens/listviewbuilder.dart';
import 'package:flutter_essential_widgets/screens/padding_widget.dart';
import 'package:flutter_essential_widgets/screens/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Essentials widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AlignFractionalOffset(),
    );
  }
}
