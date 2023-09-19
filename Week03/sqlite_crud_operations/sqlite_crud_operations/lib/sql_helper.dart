import 'dart:ffi';

import 'package:flutter/foundation.dart';

import 'package:sqflite/sqflite.dart' as sql;

class SqlHelper {
  static Future<void> createTables(sql.Database tables) async {
    await tables.execute("""CREATE TABLE items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      title TEXT,
      description TEXT,
      createtAt TIMESTAMP NOT NULL DEFAULT CURRENNT_TIMESTAMP
    )
    """);
  }

  static Future<sql.Database> db() async {
    return await sql.openDatabase('notes.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<int> createItem(String? title, String? description) async {
    final db = await SqlHelper.db();
    final data = {"title": title, "description": description};
    final id = db.insert("items", data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItem() async {
    final db = await SqlHelper.db();

    return db.query("items", orderBy: "id");
  }
    static Future<List<Map<String, dynamic>>> getItems(int id) async {
    final db = await SqlHelper.db();

    return db.query("items", orderBy: "id",whereArgs: [id],limit: 1);
  }

  static Future<int> updateItem(
      int id, String title, String? description) async {
    final db = await SqlHelper.db();

    final data = {
      "title": title,
      "description": description,
      "createdAt": DateTime.now().toString()
    };

    final result =
        await db.update('items', data, where: "id=?", whereArgs: [id]);
    return result;
  }

  static Future<Void> deleteItem(int id) async {
    final db = await SqlHelper.db();
    try {
      await db.delete("items", where: "id=?", whereArgs: [id]);
    } catch (error) {
      print(error.toString());
    }
    //something will happen
    return null!;
  }
}
