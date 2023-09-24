import 'package:flutter/material.dart';

class ListViewSecond extends StatefulWidget {
  const ListViewSecond({super.key});

  @override
  State<ListViewSecond> createState() => _ListViewSecondState();
}

class _ListViewSecondState extends State<ListViewSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade100,
        title: const Text("Listview.builder"),
      ),
      body: ListView.builder(itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(index.toString()),
            ),
            tileColor: Colors.white30,
            title: const Text("Farooq Ahmad"),
            subtitle: const Text("Flutter Developer"),
          ),
        );
      }),
    );
  }
}
