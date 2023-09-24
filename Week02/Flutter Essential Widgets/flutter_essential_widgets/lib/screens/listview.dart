import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List list1 = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
  ];

// add new item
  addItem(String name) {
    setState(() {
      list1.add(name);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("item added")));
    });
  }

  //delete item
  deleteitem() {
    setState(() {
      list1.remove(list1.last);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 1), content: Text("item deleted")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => addItem("New Item"),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const Text(
          "Listview",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListWheelScrollView(
          offAxisFraction: .05, //for rotation of the lisview
          magnification: 1.1, //for foucsing the current item
          diameterRatio: 3, //distance between items
          useMagnifier: true, //for focus true
          itemExtent: 80, //height of the items
          children: list1.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              child: Material(
                elevation: 6,
                child: ListTile(
                  tileColor: Colors.grey,
                  subtitle: const Text(
                    "Available",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      deleteitem();
                    },
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  leading: CircleAvatar(
                    child: Text(
                      list1.length.toString(),
                    ),
                  ),
                  title: Text(
                    item,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}
