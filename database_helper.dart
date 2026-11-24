import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database? _db; // The shared open database

// Initialize the database
Future<void> initDatabase() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'goals.db');

  _db = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE goals (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          subject TEXT NOT NULL,
          hours INTEGER NOT NULL,
          done INTEGER NOT NULL DEFAULT 0
        )
      ''');
    },
  );
}

// Insert a new goal and return its ID
Future<int> insertGoal(Map<String, dynamic> goal) async {
  return await _db!.insert('goals', {
    'subject': goal['subject'],
    'hours': goal['hours'],
    'done': goal['done'] ? 1 : 0,
  });
}

// Retrieve all goals from the database
Future<List<Map<String, dynamic>>> getGoals() async {
  final rows = await _db!.query('goals');
  return rows.map((row) => {
    'id': row['id'],
    'subject': row['subject'],
    'hours': row['hours'],
    'done': row['done'] == 1,
  }).toList();
}

// Update the completion status of a goal
Future<void> updateGoal(int id, bool done) async {
  await _db!.update(
    'goals',
    {'done': done ? 1 : 0},
    where: 'id = ?',
    whereArgs: [id],
  );
}

// Delete a goal by its ID
Future<void> deleteGoal(int id) async {
  await _db!.delete(
    'goals',
    where: 'id = ?',
    whereArgs: [id],
  );
}