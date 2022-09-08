abstract class DatabaseService {
  Future<bool> dbExists(String dbName);

  Future<String> initDB(String dbName);

  // Future<String> initDeleteDb(String dbName);
}
