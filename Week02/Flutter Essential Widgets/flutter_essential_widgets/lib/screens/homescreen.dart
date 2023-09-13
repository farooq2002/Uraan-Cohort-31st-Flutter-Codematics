import 'package:flutter/material.dart';
import 'package:flutter_essential_widgets/screens/widgets/mycard_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter Developers",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      colour: Colors.cyanAccent,
                      name: "Farooq Ahmad",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      colour: Colors.blueGrey,
                      name: "Abdul Hadi",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      colour: Colors.pink,
                      name: "Hifza Kanwal",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      colour: Colors.deepOrangeAccent,
                      name: "Tayyab khan",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      name: "Intisar Aftab",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      name: "New Comer",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Intern",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                  ],
                ),
              ),
              Text(
                "Web Developers",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      name: "Shahzeb Jadoon",
                      devtech: "Web Dev",
                      colour: Colors.deepOrangeAccent,
                    ),
                    MyCard(
                      colour: Colors.indigo.shade100,
                      name: "Aamir Khan",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      colour: Colors.tealAccent,
                      name: "Younis Khan",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                  ],
                ),
              ),
              Text(
                "Python Developers",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyCard(
                      name: "Tayyab Khan",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Tariq Ahmad",
                      devtech: "Python Intern",
                    ),
                    MyCard(
                      name: "",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                    MyCard(
                      name: "Farooq Ahmad",
                      devtech: "Flutter Dev",
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
