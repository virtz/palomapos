import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_app/features/table_service/data/datasources/db_constants.dart';

import '../models/order.dart' as or;

@LazySingleton()
class OrderDatabase {
  static final OrderDatabase instance = OrderDatabase._internal();
  OrderDatabase();
  static Database? _database;
  OrderDatabase._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'orders.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    return await db.execute("""CREATE TABLE ${DBConstants.tableName}(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    amount TEXT NOT NULL,
    imgUrl TEXT NOT NULL,
    quantity INTEGER NOT NULL
    )""");
  }

  Future<or.Order> create({required or.Order order}) async {
    final db = await instance.database;
    final id = await db.insert("orders", order.toMap());
    return order.copyWith(id: id);
  }

  Future<or.Order> read({required int id}) async {
    final db = await instance.database;
    final maps = await db.query(DBConstants.tableName,
        columns: DBConstants.values, where: 'id=?', whereArgs: ["id"]);
    if (maps.isNotEmpty) {
      return or.Order.fromMap(maps.first);
    } else {
      throw Exception("order with id $id not found");
    }
  }

  Future<List<or.Order>> readAll() async {
    final db = await instance.database;
    final result = await db.query(DBConstants.tableName);
    return result.map((e) => or.Order.fromMap(e)).toList();
  }

  Future<int> update(or.Order order) async {
    final db = await instance.database;
    return db.update(
      DBConstants.tableName,
      order.toMap(),
      where: 'id = ?',
      whereArgs: [order.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      DBConstants.tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
