import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [DocTypes, DocFields, SchemaVersions, SyncQueue, LocalDocuments])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  AppDatabase.test(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;
}

QueryExecutor _openConnection() {
  return driftDatabase(name: 'vintraxo');
}
