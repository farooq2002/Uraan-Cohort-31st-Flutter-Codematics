import 'package:custom_app_theme/THEME/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var isdark = false;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,

        // backgroundColor:
        //     isdark ? Mydarktheme.tPrimaryColor : MyLighttheme().tCardBgColor,
        title: const Text("Theme Changer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("Headline 1"),
            const SizedBox(
              height: 20,
            ),
            const Text("Headline 2"),
            const SizedBox(
              height: 20,
            ),
            const Text("Headline 3"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text("Outline Button")),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Button")))
          ],
        ),
      ),
    );
  }
}
