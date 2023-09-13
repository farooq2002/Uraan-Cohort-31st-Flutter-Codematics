import 'package:flutter/material.dart';
import 'package:flutter_essential_widgets/screens/listview.dart';
import 'package:flutter_essential_widgets/screens/padding_widget.dart';
import 'package:flutter_essential_widgets/screens/text_widget.dart';

class DirectionalityScreen extends StatelessWidget {
  const DirectionalityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        title: const Text(
          "فاروق احمد",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            child: Text(
              "Widget Essentials",
              style: TextStyle(fontSize: 33),
            ),
          ),
          ListTile(
            title: const Text("Text"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TextWidget()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("AppBar"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListViewScreen()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("ListView"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListViewScreen()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Padding"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaddingWidget()));
            },
          ),
          const Divider(),
        ],
      )),
      body: Column(
        children: [
          Center(
            child: Card(
              elevation: 3,
              margin: const EdgeInsets.all(10),
              surfaceTintColor: Colors.blue.shade200,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "میں ایک سافٹ ویئر انجینئر ہوں",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
