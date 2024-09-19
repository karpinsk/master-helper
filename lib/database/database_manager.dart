import 'package:slasher/models/detail.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseManager {
  static final DatabaseManager instance = DatabaseManager._init();

  static Database? _database;

  DatabaseManager._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('details.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const detailTable = '''
  CREATE TABLE details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    orderNumber TEXT NOT NULL,
    name TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    finishedQuantity INTEGER NOT NULL DEFAULT 0,
    type INTEGER NOT NULL,
    createdAt TEXT NOT NULL,
    modifiedAt TEXT NOT NULL,
    parentId INTEGER,
    mainInformation TEXT,
    comment TEXT,
    drawingImagePath TEXT,
    regularImagePath TEXT,
    subDetailIds TEXT
  )
  ''';

    await db.execute(detailTable);
  }

  Future<int> createDetail(Detail detail) async {
    final db = await instance.database;
    return await db.insert('details', detail.toMap());
  }

  Future<Detail?> readDetail(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      'details',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Detail.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> updateDetail(Detail detail) async {
    final db = await instance.database;

    detail.modifiedAt = DateTime.now();

    return await db.update(
      'details',
      detail.toMap(),
      where: 'id = ?',
      whereArgs: [detail.id],
    );
  }

  Future<bool> hasSubDetails(int parentId) async {
    final db = await instance.database;

    final result = await db.query(
      'details',
      where: 'parentId = ?',
      whereArgs: [parentId],
    );

    return result.isNotEmpty;
  }

  Future<void> deleteDetail(int id) async {
    final db = await database;

    final maps = await db.query(
      'details',
      where: 'parentId = ?',
      whereArgs: [id],
    );

    final subDetails = maps.map((map) => Detail.fromMap(map)).toList();

    for (final subDetail in subDetails) {
      await deleteDetail(subDetail.id!);
    }

    await db.delete(
      'details',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteSubDetails(int parentId) async {
    final db = await instance.database;

    return await db.delete(
      'details',
      where: 'parentId = ?',
      whereArgs: [parentId],
    );
  }

  Future close() async {
    final db = await instance.database;
    await db.close();
  }

  Future<List<Detail>> getDetails() async {
    try {
      final db = await instance.database;
      final result = await db.query('details');
      return result.map((json) => Detail.fromMap(json)).toList();
    } catch (error) {
      throw Exception('Failed to load details');
    }
  }
}
