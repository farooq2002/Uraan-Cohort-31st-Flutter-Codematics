import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Text Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          //******************** TEXT WIDGET********************************
          const Center(
            child: Text(
              "Farooq Ahmad",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "MajorMonoDisplay",
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(4, 1))
                  ],
                  decorationThickness: 3,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
              wordSpacing: 9,
              fontSize: 25,
              decoration: TextDecoration.lineThrough,
              foreground: Paint()
                ..color = Colors.teal
                ..strokeWidth = 4
                ..style = PaintingStyle.stroke,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              letterSpacing: 4,
              fontWeight: FontWeight.w800,
              fontSize: 14,
              fontFamily: "MajorMonoDisplay",
              backgroundColor: Colors.black,
              foreground: Paint()
                ..color = Colors.white
                ..strokeWidth = 4
                ..style = PaintingStyle.stroke,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Codematics Inc\n I am intern at Urraan",
            style: TextStyle(
              letterSpacing: 4,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Text(
            "YOU CAN DO IT!",
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
