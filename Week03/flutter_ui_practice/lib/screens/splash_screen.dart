import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff39439D),
      body: Center(
          child: SizedBox(
              height: 290,
              width: 200,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/codematics_logo.png",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Codematics",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ))),
    );
  }
}
