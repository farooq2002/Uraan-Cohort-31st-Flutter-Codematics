import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String? devtech;
  final Color? colour;
  const MyCard({
    super.key,
    required this.name,
    this.devtech,
    this.colour = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                radius: 30,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                devtech!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
