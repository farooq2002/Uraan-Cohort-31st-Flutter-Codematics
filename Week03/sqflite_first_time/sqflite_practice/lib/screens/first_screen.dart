import 'package:flutter/material.dart';
import 'package:sqflite_practice/models/database_student.dart';
import 'package:sqflite_practice/models/model_student.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String id = "";
  String name = "";
  StudentDatabase databaseStudent = StudentDatabase();

  @override
  void initState() {
    super.initState();

    ModelStudent ss = ModelStudent(id: 1, name: 'Farooq ahmad');
    ModelStudent object = ModelStudent.fromMap(ss.toMap());

    setState(() {
      databaseStudent.initializedDatabase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          "SQFLITE PRACTICE",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_android),
                      hintText: "Type Id here",
                      border: InputBorder.none),
                  onChanged: (value) {
                    setState(() {
                      id = value;
                      print(id);
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_2),
                      hintText: "Type name here",
                      border: InputBorder.none),
                  onChanged: (value) {
                    name = value;
                    print(name);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ModelStudent modelStudent =
                            ModelStudent(id: int.parse(id), name: name);

                        databaseStudent
                            .updateStudent(modelStudent)
                            .then((value) {
                          if (value) {
                            print("Record updated Successfully!");
                          } else {
                            print("Record updated failed!");
                          }
                        });
                      },
                      child: const Text("Update Student")),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ModelStudent modelStudent =
                            ModelStudent(id: int.parse(id), name: name);

                        databaseStudent.addStudent(modelStudent).then((value) {
                          if (value) {
                            print("Student added sucessfully!");
                          } else {
                            print("Student data failed!");
                          }
                        });
                      },
                      child: const Text("Add Student"))
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       ElevatedButton(
            //           onPressed: () {}, child: const Text("Add Student")),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       ElevatedButton(
            //           onPressed: () {}, child: const Text("Add Student"))
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       ElevatedButton(
            //           onPressed: () {}, child: const Text("Add Student")),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       ElevatedButton(
            //           onPressed: () {}, child: const Text("Add Student"))
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
