import 'dart:io';

import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';

import 'database_service.dart';

class DatabaseServiceImpl extends GetxService implements DatabaseService {
  @override
  Future<bool> dbExists(String dbName) async {
    final databasePath = await getDatabasesPath();
    // debugPrint(databasePath);
    final path = join(databasePath, dbName);
    var status = false;
    if (await Directory(dirname(path)).exists()) {
      status = await databaseExists(path);
      return status;
    }
    return status;
  }

  @override
  Future<String> initDB(String dbName) async {
    final databasePath = await getDatabasesPath();
    // debugPrint(databasePath);
    final path = join(databasePath, dbName);

    // make sure the folder exists
    if (await Directory(dirname(path)).exists()) {
      return path;
    } else {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        debugPrint(e.toString());
      }
    }
    return path;
  }

// @override
// Future<String> initDeleteDb(String dbName) async {
//   final databasePath = await getDatabasesPath();
//   // debugPrint(databasePath);
//   final path = join(databasePath, dbName);
//
//   // make sure the folder exists
//   if (await Directory(dirname(path)).exists()) {
//     await deleteDatabase(path);
//   } else {
//     try {
//       await Directory(dirname(path)).create(recursive: true);
//     } catch (e) {
//       debugPrint(e);
//     }
//   }
//   return path;
// }
}
