import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'strings.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE strings(id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<int> saveString(String value) async {
    final db = await database;
    return await db.insert(
      'strings',
      {'value': value},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<String>> getStrings() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query('strings');
    return results.map((row) => row['value'] as String).toList();
  }

  Future<void> deleteAllStrings() async {
    final db = await database;
    await db.delete('strings');
  }
}