import 'dart:io';
import 'dart:async';
import 'Client.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DataBaseP {
  DataBaseP._();
  static final DataBaseP db = DataBaseP._();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "TestDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Client ("
          "id INTEGER PRIMARY KEY,"
          "orginal TEXT,"
          "tachkil TEXT"
          ")");
    });
  }

  newClient(Client newClient) async {
    final db = await database;
    var raw = await db.rawInsert(
        "INSERT Into Client (orginal,tachkil)"
        " VALUES (?,?)",
        [newClient.orginal, newClient.tachkil]);
    return raw;
  }

  Future<List<Client>> getAllClients() async {
    final db = await database;
    var res = await db.query("Client");
    List<Client> list =
        res.isNotEmpty ? res.map((c) => Client.fromMap(c)).toList() : [];
    return list;
  }

  deleteClient(int id) async {
    final db = await database;
    return db.delete("Client", where: "id = ?", whereArgs: [id]);
  }

  deleteAll() async {
    final db = await database;
    db.rawDelete(" DELETE FROM Client");
  }
}
