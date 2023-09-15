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
  List<ModelStudent> students = [];

  @override
  void initState() {
    super.initState();

    ModelStudent ss = ModelStudent(id: 1, name: 'Farooq ahmad');

    ModelStudent object = ModelStudent.fromMap(ss.toMap());

    setState(() {
      databaseStudent.initializedDatabase();
      databaseStudent.getAllStudent().then((studentlList) {
        setState(() {
          students = studentlList;
        });
      });
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
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    hintText: "Type Id here",
                    border: InputBorder.none,
                  ),
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
                        if (id.isNotEmpty) {
                          ModelStudent modelStudent =
                              ModelStudent(id: int.parse(id), name: name);

                          databaseStudent
                              .updateStudent(modelStudent)
                              .then((value) {
                            if (value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Record updated Successfully!"),
                                ),
                              );
                            } else {
                              print("Record updated failed!");
                            }
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please provide a Integer value"),
                            ),
                          );
                        }
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Student added sucessfully!"),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Student data failed!"),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text("Add Student"))
                ],
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

                        databaseStudent.deleteStudent(id).then((value) {
                          if (value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text("Deleted single student from last"),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Single entry deletion failed!"),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text("Delete Student")),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        ModelStudent modelStudent =
                            ModelStudent(id: int.parse(id), name: name);

                        databaseStudent.deleteAllStudent().then((value) {
                          if (value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Deleted All Students data successfully!"),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Deletion Failed!"),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text("Delete All Student")),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(students[index].id.toString())),
                        title: Text(students[index].name),
                        subtitle: const Text("Urran Intern"),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
