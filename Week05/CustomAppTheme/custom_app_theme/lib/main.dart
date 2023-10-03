import 'package:custom_app_theme/Screens/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.amber,
          primaryColor: Colors.white,
          primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}
