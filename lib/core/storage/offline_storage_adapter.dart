/// Abstract interface for offline storage adapters.
/// This allows platform-specific implementations:
/// - Drift SQLite for Mobile/Desktop
/// - IndexedDB for Web
abstract class OfflineStorageAdapter {
  /// Initialize the database connection.
  Future<void> initialize();

  /// Execute a raw query.
  Future<List<Map<String, dynamic>>> query(String sql, [List<dynamic>? arguments]);

  /// Save a document or metadata locally.
  Future<void> save(String table, Map<String, dynamic> data);

  /// Delete a document locally.
  Future<void> delete(String table, String id);

  /// Close the database connection.
  Future<void> close();
}
