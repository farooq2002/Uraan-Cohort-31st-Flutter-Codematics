import 'package:flutter/material.dart';
import 'package:sqflitetwo_practice/models/note_database.dart';
import 'package:sqflitetwo_practice/models/notes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late NotesDatabase notesDatabase;
  late Future<List<NotesModel>> noteList;
  @override
  void initState() {
    super.initState();
    notesDatabase = NotesDatabase();
    loadData();
  }

  loadData() async {
    noteList = notesDatabase.getNoteList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Text("Notes App"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard),
                    label: Text("Type Somethinh here ..."),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                notesDatabase
                    .insert(NotesModel(
                        title: "sdada",
                        age: 22,
                        description: 'this is my gggg app',
                        email: 'farooqahmad.se@gmail.com'))
                    .then((value) {
                  print("DATA INSERTION SUCCESS!");
                }).onError((error, stackTrace) {
                  print("THE DATA INSERTION HAVE ERROR : $error");
                });
              },
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(30),
                color: Colors.amber,
                child: const SizedBox(
                  height: 45,
                  width: 300,
                  child: Center(
                    child: Text(
                      "Save",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: FutureBuilder(
                  future: noteList,
                  builder: (context, AsyncSnapshot<List<NotesModel>> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            final note = snapshot.data![index];
                            return Card(
                                elevation: 4,
                                shadowColor: Colors.amber,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  title: Text(note.title.toString()),
                                  subtitle: Text(note.email),
                                  leading: CircleAvatar(
                                    child: Text(index.toString()),
                                  ),
                                ));
                          });
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else {
                      return const Text("Loading");
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
