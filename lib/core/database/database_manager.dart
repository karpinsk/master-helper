import 'dart:convert';

import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseManager {
  static final DatabaseManager instance = DatabaseManager._init();

  static Database? _database;

  DatabaseManager._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('details_test.db');
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
    status INTEGER DEFAULT 0,
    createdAt TEXT NOT NULL,
    modifiedAt TEXT NOT NULL,
    parentId INTEGER,
    info TEXT,
    comment TEXT,
    techProcess TEXT,
    drawingPath TEXT,
    photoPath TEXT,
    drawingExpirationDate TEXT,
    subDetailIds TEXT
  )
  ''';

    await db.execute(detailTable);
  }

  Future<int> createDetail(DetailDto detail) async {
    final db = await instance.database;
    detail.createdAt = DateTime.now();
    detail.modifiedAt = DateTime.now();
    return await db.insert('details', detail.toDatabaseMap());
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

  Future<int> updateDetail(int id, Map<DetailField, dynamic> fields) async {
    final db = await instance.database;
    fields.addAll({DetailField.modifiedAt: DateTime.now().toIso8601String()});

    final stringFields = fields.map(
      (key, value) => MapEntry(key.name, value),
    );

    return await db.update(
      'details',
      stringFields,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteDetail(int id) async {
    final db = await database;

    final maps = await db.query(
      'details',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      final detail = Detail.fromMap(maps.first);

      if (detail.parentId != null) {
        final parentMaps = await db.query(
          'details',
          where: 'id = ?',
          whereArgs: [detail.parentId],
        );
        if (parentMaps.isNotEmpty) {
          final parentDetail = Detail.fromMap(parentMaps.first);
          parentDetail.subDetailIds.remove(id);
          await db.update(
            'details',
            {'subDetailIds': jsonEncode(parentDetail.subDetailIds)},
            where: 'id = ?',
            whereArgs: [parentDetail.id],
          );
        }
      }
    }

    final subDetails = await db.query(
      'details',
      where: 'parentId = ?',
      whereArgs: [id],
    );

    for (final subDetail in subDetails) {
      final subDetailId = subDetail['id'] as int;
      await deleteDetail(subDetailId);
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

  Future<List<Detail>> getSubDetails(int parentId) async {
    final db = await instance.database;

    final result = await db.query(
      'details',
      where: 'parentId = ?',
      whereArgs: [parentId],
    );

    return result.map((json) => Detail.fromMap(json)).toList();
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
