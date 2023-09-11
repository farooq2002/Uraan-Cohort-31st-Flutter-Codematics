import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text(
            "Padding Widget",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amberAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 50),
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 9),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
