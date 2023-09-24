import 'package:flutter/material.dart';

class AlignWidegt extends StatelessWidget {
  const AlignWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "ALign Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          const Center(
              child: Text(
            "Alignment(x,y)",
            style: TextStyle(fontSize: 23),
          )),
          const Text("value : 0,0"),
          conatiner(0, 0),
          const Text("value : 1,0"),
          conatiner(1, 0),
          const Text("value : 0,1"),
          conatiner(0, 1),
          const Text("value : -1,0"),
          conatiner(-1, 0),
          const Text("value : 0,-1"),
          conatiner(0, -1),
          const Text("value : -1,-1"),
          conatiner(-1, -1),
          const Text("value : 1,-1"),
          conatiner(1, -1),
          const Text("value : -1,0"),
          conatiner(-1, 0),
        ]),
      ),
    );
  }

  Container conatiner(double val1, double val2) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      child: Align(
          alignment: Alignment(val1, val2),
          child: const Text(
            "Conatiner",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}
