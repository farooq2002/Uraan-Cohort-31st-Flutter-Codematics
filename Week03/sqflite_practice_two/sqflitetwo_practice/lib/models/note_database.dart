import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflitetwo_practice/models/notes.dart';

class NotesDatabase {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationCacheDirectory();
    String path = join(documentDirectory.path, 'notes.db');
    var db = openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,age INTEGER NOT NULL,description TEXT NOT NULL,email TEXT)");
  }

  Future<NotesModel> insert(NotesModel notesModel) async {
    var dbClient = await db;
    await dbClient.insert('notes', notesModel.toMap());
    return notesModel;
  }

  Future<List<NotesModel>> getNoteList() async {
    var dbClientt = await db;
    final List<Map<String, dynamic>> queryResult =
        await dbClientt.query("notes");
    return queryResult.map((e) => NotesModel.fromMap(e)).toList();
  }
}
