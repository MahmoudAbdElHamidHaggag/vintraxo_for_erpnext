import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vintraxo_for_erpnext/core/storage/database/app_database.dart';
import 'package:vintraxo_for_erpnext/features/metadata/data/sources/schema_versioning_service.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';

// Test specific database to use memory executor
class TestDatabase extends AppDatabase {
  TestDatabase() : super.test(NativeDatabase.memory());
}

void main() {
  late TestDatabase db;
  late SchemaVersioningService service;

  setUp(() {
    db = TestDatabase();
    service = SchemaVersioningService(db);
  });

  tearDown(() async {
    await db.close();
  });

  group('SchemaVersioningService', () {
    test('isSchemaUpToDate returns false for completely new schema', () async {
      final docType = DocType(
        name: 'Customer',
        module: 'Selling',
        fields: [],
      );

      final isUpToDate = await service.isSchemaUpToDate(docType);
      expect(isUpToDate, false);
    });

    test('updateSchemaCache caches the schema correctly', () async {
      final docType = DocType(
        name: 'Item',
        module: 'Stock',
        description: 'Test Item',
        fields: [
          DocField(fieldname: 'item_code', fieldtype: 'Data', label: 'Item Code', reqd: 1),
        ],
      );

      await service.updateSchemaCache(docType);

      // Verify DocType was saved
      final savedDocType = await db.select(db.docTypes).getSingle();
      expect(savedDocType.name, 'Item');
      expect(savedDocType.description, 'Test Item');

      // Verify DocFields were saved
      final savedFields = await db.select(db.docFields).get();
      expect(savedFields.length, 1);
      expect(savedFields.first.fieldname, 'item_code');
      expect(savedFields.first.reqd, 1);

      // Verify SchemaVersion was saved
      final savedVersion = await db.select(db.schemaVersions).getSingle();
      expect(savedVersion.docTypeName, 'Item');
      expect(savedVersion.schemaHash.isNotEmpty, true);
    });

    test('isSchemaUpToDate correctly detects identical and changed schemas', () async {
      final initialDocType = DocType(
        name: 'Employee',
        module: 'HR',
        fields: [
          DocField(fieldname: 'first_name', fieldtype: 'Data', label: 'First Name'),
        ],
      );

      // Save initial schema
      await service.updateSchemaCache(initialDocType);

      // Check if the same exact schema is up to date
      final isUpToDate = await service.isSchemaUpToDate(initialDocType);
      expect(isUpToDate, true);

      // Create a modified schema (e.g., added a field)
      final modifiedDocType = DocType(
        name: 'Employee',
        module: 'HR',
        fields: [
          DocField(fieldname: 'first_name', fieldtype: 'Data', label: 'First Name'),
          DocField(fieldname: 'last_name', fieldtype: 'Data', label: 'Last Name'),
        ],
      );

      // Check if modified schema is up to date
      final isModifiedUpToDate = await service.isSchemaUpToDate(modifiedDocType);
      expect(isModifiedUpToDate, false);
    });
  });
}
