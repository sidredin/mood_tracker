import 'dart:async';

import 'package:mood_tracker/models/graph_point.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbInteractions {
  Future<Database>? database;

  DbInteractions() {
    database = initDB();
  }

  Future<Database> initDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'mood_tracker_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE graphPoints(datetime INTEGER PRIMARY KEY, moodValue INTEGER, comment TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertGraphPoint(GraphPoint graphPoint) async {
    final db = await database;

    if (db != null) {
      await db.insert(
        'graphPoints',
        graphPoint.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } else
      throw Exception('Can`t open DB');
  }

  Future<List<GraphPoint>> graphPoints() async {
    final db = await database;

    final List<Map<String, dynamic>>? maps = await db?.query('graphPoints');

    if (maps != null) {
      return List.generate(maps.length, (i) {
        return GraphPoint(
          datetime: maps[i]['datetime'],
          moodValue: maps[i]['moodValue'],
          comment: maps[i]['comment'],
        );
      });
    } else {
      throw Exception('"maps" variable mustn`t be null');
    }
  }

  Future<void> updateGraphPoint(GraphPoint graphPoint) async {
    final db = await database;

    await db?.update(
      'graphPoints',
      graphPoint.toMap(),
      where: 'datetime = ?',
      whereArgs: [graphPoint.datetime],
    );
  }

  Future<void> deleteGraphPoint(int datetime) async {
    final db = await database;

    await db?.delete(
      'graphPoints',
      where: 'datetime = ?',
      whereArgs: [datetime],
    );
  }
}
