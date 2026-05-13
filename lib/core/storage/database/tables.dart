import 'package:drift/drift.dart';

@DataClassName('DocTypeEntity')
class DocTypes extends Table {
  TextColumn get name => text()();
  TextColumn get module => text()();
  IntColumn get isSubmittable => integer().nullable()();
  IntColumn get istable => integer().nullable()();
  IntColumn get isSingle => integer().nullable()();
  IntColumn get custom => integer().nullable()();
  TextColumn get description => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {name};
}

@DataClassName('DocFieldEntity')
class DocFields extends Table {
  TextColumn get fieldname => text()();
  TextColumn get parent => text().references(DocTypes, #name)();
  TextColumn get fieldtype => text()();
  TextColumn get label => text()();
  IntColumn get reqd => integer().nullable()();
  IntColumn get hidden => integer().nullable()();
  IntColumn get readOnly => integer().nullable()();
  TextColumn get options => text().nullable()();
  TextColumn get dependsOn => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {parent, fieldname};
}

@DataClassName('SchemaVersionEntity')
class SchemaVersions extends Table {
  TextColumn get docTypeName => text().references(DocTypes, #name)();
  TextColumn get schemaHash => text()();
  DateTimeColumn get lastSync => dateTime()();

  @override
  Set<Column> get primaryKey => {docTypeName};
}

@DataClassName('SyncQueueEntity')
class SyncQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get docType => text()();
  TextColumn get docName => text().nullable()();
  TextColumn get action => text()(); // 'create', 'update', 'delete'
  TextColumn get payload => text()(); // JSON string
  DateTimeColumn get timestamp => dateTime()();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
}

@DataClassName('LocalDocumentEntity')
class LocalDocuments extends Table {
  TextColumn get docType => text()();
  TextColumn get name => text()();
  TextColumn get payload => text()(); // JSON string
  DateTimeColumn get lastUpdated => dateTime()();
  BoolColumn get isPendingSync => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {docType, name};
}
