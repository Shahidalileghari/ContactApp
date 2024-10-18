import 'package:contactapp/ContactList/ContactModel.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase with ChangeNotifier {
  static const _dbName = "todo.db";
  static const _tableName = "todos";
  static const _columnId = "id";
  static const _columnTitle = "title";
  static const _columnDesc = "description";
  // static const _columnDate = "date";

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    notifyListeners();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final db = await openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) {
        db.execute("""CREATE TABLE $_tableName (
        $_columnId INTEGER PRIMARY KEY AUTOINCREMENT, 
        $_columnTitle TEXT NOT NULL,
        $_columnDesc TEXT NOT NULL,
        )""");
      },
      version: 1,
    );
    notifyListeners();
    return db;
  }

  Future<List<ContactModel>> getAllTodos() async {
    final db = await database;
    final todoMaps = await db.query(_tableName);
    List<ContactModel> todos = [];
    for (var map in todoMaps) {
      ContactModel todo = ContactModel.from(map);
      todos.add(todo);
    }
    notifyListeners();
    return todos;
  }

  insertTodo(ContactModel todo) async {
    final db = await database;
    await db.insert(
      _tableName,
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    notifyListeners();
  }

  updateTodo(ContactModel todo) async {
    final db = await database;
    await db.update(
      _tableName,
      todo.toMap(),
      where: "$_columnId = ?",
      whereArgs: [todo.id],
    );
    notifyListeners();
  }

  deleteTodo(int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: "$_columnId = ?",
      whereArgs: [id],
    );
    notifyListeners();
  }

  deleteAll() async {
    final db = await database;
    await db.delete(_tableName);
    notifyListeners();
  }

}
