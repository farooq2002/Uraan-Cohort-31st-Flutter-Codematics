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
  late StudentDatabase databaseStudent;
  late Future<List<ModelStudent>> students;

  @override
  void initState() {
    super.initState();

    ModelStudent ss = ModelStudent(id: 1, name: 'Farooq ahmad');

    ModelStudent object = ModelStudent.fromMap(ss.toMap());

    setState(() {
      databaseStudent.initializedDatabase();
      databaseStudent.getAllStudent().then((studentlList) {});
      loadData();
    });
  }

  loadData() async {
    students = databaseStudent.getAllStudent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Note App",
          style: TextStyle(color: Colors.black),
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
            // Container(
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: Colors.black)),
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            //     child: TextField(
            //       decoration: const InputDecoration(
            //           prefixIcon: Icon(Icons.person_2),
            //           hintText: "Type name here",
            //           border: InputBorder.none),
            //       onChanged: (value) {
            //         name = value;
            //         print(name);
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (id.isNotEmpty) {
                          ModelStudent modelStudent = ModelStudent(name: name);

                          databaseStudent
                              .updateStudent(modelStudent)
                              .then((value) {
                            if (value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Record updated Successfully!"),
                                ),
                              );

                              setState(() {
                                databaseStudent.initializedDatabase();
                                databaseStudent
                                    .getAllStudent()
                                    .then((studentlList) {});
                              });
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
                        ModelStudent modelStudent = ModelStudent(name: name);

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
              child: FutureBuilder(
                future: students,
                builder: (context, AsyncSnapshot<List<ModelStudent>> snapshot) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4,
                          child: ListTile(
                            title: Text(snapshot.data![index].name),
                            leading: CircleAvatar(
                              child: Text(snapshot.data?[index].id as String),
                            ),
                            subtitle: const Text("fluter"),
                          ),
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

//============================================================================================================

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   late NotesDatabase notesDatabase;
//   late Future<List<NotesModel>> noteList;
//   @override
//   void initState() {
//     super.initState();
//     notesDatabase = NotesDatabase();
//     loadData();
//   }

//   loadData() async {
//     noteList = notesDatabase.getNoteList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 4,
//         title: const Text("Notes App"),
//         backgroundColor: Colors.amber,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 30,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black, width: 2),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.keyboard),
//                     label: Text("Type Somethinh here ..."),
//                     border: InputBorder.none),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             InkWell(
//               onTap: () {
//                 notesDatabase
//                     .insert(NotesModel(
//                         title: "My Notes",
//                         age: 22,
//                         description: 'this is my gggg app',
//                         email: 'farooqahmad.se@gmail.com'))
//                     .then((value) {
//                   print("DATA INSERTION SUCCESS!");
//                 }).onError((error, stackTrace) {
//                   print("THE DATA INSERTION HAVE ERROR : $error");
//                 });
//               },
//               child: Material(
//                 elevation: 4,
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.amber,
//                 child: const SizedBox(
//                   height: 45,
//                   width: 300,
//                   child: Center(
//                     child: Text(
//                       "Save",
//                       style:
//                           TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: FutureBuilder(
//                   future: noteList,
//                   builder: (context, AsyncSnapshot<List<NotesModel>> snapshot) {
//                     return ListView.builder(
//                         itemCount: snapshot.data?.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             elevation: 4,
//                             shadowColor: Colors.amber,
//                             child: ListTile(
//                               contentPadding:
//                                   const EdgeInsets.symmetric(horizontal: 10),
//                               title: Text(snapshot.data![index].age.toString()),
//                               subtitle: const Text("Flutter dev"),
//                               leading: const CircleAvatar(child: Text("21")),
//                             ),
//                           );
//                         });
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
