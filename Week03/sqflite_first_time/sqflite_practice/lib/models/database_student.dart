import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as Path;

const String databaseName = "student_db";
const String studentTable = "student_table";
const String columnId = "column_id";
const String columnName = "column_name";

class StudentDatabase {
  static Database? _database;

  Future<Database> get database async {
    //if _database==null assign initializedDatabase to
    _database ??= await initializedDatabase();
    return database;
  }

  static StudentDatabase? _studentDatabase;
  StudentDatabase._onCreateInstance();

  factory StudentDatabase() =>
      // (??=) a shorthand way to assign a value to a variable only if that variable
      // is currently null.
      _studentDatabase ??= StudentDatabase._onCreateInstance();

  Future<Database> initializedDatabase() async {
    try {
      var databasPath = await getDatabasesPath();
      String path = Path.join(databasPath, databaseName);

      Database database = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) {
          db.execute('''
          create table $studentTable(
          $columnId INTEGER PRIMARY KEY,
          $columnName text not null)
        ''');
        },
      );
      return database;
    } catch (e) {
      print(e.toString());
      return null!;
    }
  }
}
