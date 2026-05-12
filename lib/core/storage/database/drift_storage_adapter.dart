import 'package:vintraxo_for_erpnext/core/storage/offline_storage_adapter.dart';
import 'package:vintraxo_for_erpnext/core/storage/database/app_database.dart';

class DriftStorageAdapter implements OfflineStorageAdapter {
  final AppDatabase db;

  DriftStorageAdapter(this.db);

  @override
  Future<void> initialize() async {
    // Database initializes lazily, but we can execute a simple query to wake it up
    await db.customSelect('SELECT 1').get();
  }

  @override
  Future<List<Map<String, dynamic>>> query(String sql, [List<dynamic>? arguments]) async {
    final result = await db.customSelect(sql, variables: arguments?.map((e) => Variable(e)).toList() ?? []).get();
    return result.map((row) => row.data).toList();
  }

  @override
  Future<void> save(String table, Map<String, dynamic> data) async {
    // In Drift, generic dynamic saves are tricky because it's strongly typed.
    // However, we can use raw queries for generic saves or specific DAOs.
    // For this generic adapter, we use raw SQL insertion.
    final keys = data.keys.join(', ');
    final values = data.values.map((e) => '?').join(', ');
    final sql = 'INSERT OR REPLACE INTO $table ($keys) VALUES ($values)';
    
    await db.customStatement(sql, data.values.toList());
  }

  @override
  Future<void> delete(String table, String id) async {
    // Assuming primary key is `name` for generic deletion
    await db.customStatement('DELETE FROM $table WHERE name = ?', [id]);
  }

  @override
  Future<void> close() async {
    await db.close();
  }
}
