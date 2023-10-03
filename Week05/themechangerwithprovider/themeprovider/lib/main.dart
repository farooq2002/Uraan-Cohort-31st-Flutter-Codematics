import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themeprovider/providers/theme_provider.dart';
import 'package:themeprovider/screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
          )
        ],
        child: Builder(
          builder: ((context) {
            final themeChanger = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              title: 'Flutter Demo',
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                  primarySwatch: Colors.blue, brightness: Brightness.light),
              darkTheme: ThemeData(brightness: Brightness.dark),
              home: const HomeScreen(),
            );
          }),
        ));
  }
}
