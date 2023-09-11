import 'package:flutter/material.dart';

class AlignFractionalOffset extends StatelessWidget {
  const AlignFractionalOffset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Fractional Offset",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          const Text("Value : 1,0"),
          fractionalWidget(1, 0),
          const Text("Value : 1,0"),
          fractionalWidget(0, 1),
          const Text("Value : 1,0"),
          fractionalWidget(0, 0),
          const Text("Value : 1,0"),
          fractionalWidget(0.5, 0),
          const Text("Value : 1,0"),
          fractionalWidget(0, 0.5),
          const Text("Value : 1,0"),
          fractionalWidget(0.5, 0.5),
        ]),
      ),
    );
  }

  Container fractionalWidget(double val1, double val2) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 50, 2, 161),
      ),
      child: Align(
        alignment: FractionalOffset(val1, val2),
        child: const Text(
          "Flutter",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
