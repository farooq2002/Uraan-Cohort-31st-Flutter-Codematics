import 'package:flutter/material.dart';

class TaskTextWidget extends StatefulWidget {
  const TaskTextWidget({super.key});

  @override
  State<TaskTextWidget> createState() => _TaskTextWidgetState();
}

class _TaskTextWidgetState extends State<TaskTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Colors.red,
                  Colors.lightGreen,
                  Colors.blue,
                  Colors.amber
                ]),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      spreadRadius: 4,
                      offset: Offset(1, 2))
                ]),
            child: const Center(
              child: Text(
                "Farooq Ahmad",
                style: TextStyle(
                    letterSpacing: 3,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
