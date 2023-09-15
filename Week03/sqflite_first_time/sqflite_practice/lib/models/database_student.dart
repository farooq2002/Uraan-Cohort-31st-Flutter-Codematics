import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as Path;
import 'package:sqflite_practice/models/model_student.dart';

const String databaseName = "student_db";
const String studentTable = "student_table";
const String column_id = "id";
const String columnName = "name";

class StudentDatabase {
  // Static variable to hold the reference to the SQLite database.
  static Database? _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializedDatabase();
    }

    return _database!;
  }

  // Static variable to hold a single instance of the StudentDatabase class.
  static StudentDatabase? _studentDatabase;
  // Private constructor to ensure that instances are only created within the class.
  StudentDatabase._onCreateInstance();
// Factory constructor for creating instances of the StudentDatabase class.
  factory StudentDatabase() {
    if (_studentDatabase == null) {
      _studentDatabase = StudentDatabase._onCreateInstance();
    }
    return _studentDatabase!;
  }

  Future<Database?> initializedDatabase() async {
    try {
      // Get the path to the directory where databases are stored.
      var databasPath = await getDatabasesPath();
      // Join the database name with the directory path to create the full path.
      String path = Path.join(databasPath, databaseName);

      // Open the database, specifying the schema to create the student table.
      Database database = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) {
          // Create the student table with columns: column_id (integer, primary key)
          // and column_name (text).
          db.execute('''
          CREATE TABLE $studentTable(
          $column_id INTEGER PRIMARY KEY,
          $columnName TEXT NOT NULL)
        ''');
        },
      );
      return database;
    } catch (e) {
      print("Database error : ${e.toString()}");
      return null;
    }
  }

  //============ Method for adding new student to the database=====================================
  Future<bool> addStudent(ModelStudent modelStudent) async {
    try {
      Database? db = await this.database;
      var result = await db.insert(studentTable, modelStudent.toMap());
      print("Student added database : $result");
      return true;
    } catch (e) {
      print("there is some Student added database error : ${e.toString()}");
      return false;
    }
  }

  //======== Method for updating a specific student data in database ===========================
  Future<bool> updateStudent(ModelStudent modelStudent) async {
    try {
      Database db = await this.database;
      var result = await db.update(studentTable, modelStudent.toMap(),
          where: "$column_id=?", whereArgs: [modelStudent.id]);
      return true;
    } catch (e) {
      print("Student updated database error : ${e.toString()}");
      return false;
    }
  }

  //===== Method for deleting Deleting specific student data from database tables by id ============
  Future<bool> deleteStudent(String id) async {
    try {
      Database db = await this.database;
      var result =
          await db.delete(studentTable, where: "$column_id=?", whereArgs: [id]);
      return true;
    } catch (e) {
      print("Student deleted database error : ${e.toString()}");
      return false;
    }
  }

  // Delete all students from database
  Future<bool> deleteAllStudent(String id) async {
    try {
      Database db = await this.database;
      var result = await db.delete(studentTable);
      return true;
    } catch (e) {
      print("Student deleted database error : ${e.toString()}");
      return false;
    }
  }

  //=========== Get all students data =========================================
  Future<List<ModelStudent>> getAllStudent(ModelStudent modelStudent) async {
    List<ModelStudent> list_student = [];
    try {
      Database db = await this.database;
      List<Map<String, dynamic>> result =
          await db.query(studentTable, orderBy: "$column_id DESC");
      if (result.isNotEmpty) {
        for (int i = 0; i < result.length; i++) {
          ModelStudent modelStudent = ModelStudent.fromMap(result[i]);
          list_student.add(modelStudent);
        }
      }
      return list_student;
    } catch (e) {
      print("Student getAllStudent database error : ${e.toString()}");
      return list_student;
    }
  }

  //get count of the student table
  Future<int> getCountStudent() async {
    try {
      Database db = await this.database;
      List<Map<String, dynamic>> result = await db.query(studentTable);
      return result.length;
    } catch (e) {
      print("Get count database error : ${e.toString()}");
      return 0;
    }
  }
}
