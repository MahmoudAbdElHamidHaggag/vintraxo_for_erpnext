import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart';
import 'package:vintraxo_for_erpnext/core/storage/database/app_database.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';

class SchemaVersioningService {
  final AppDatabase db;

  SchemaVersioningService(this.db);

  /// Generates a hash for a given DocType to detect changes
  String generateSchemaHash(DocType docType) {
    final jsonString = jsonEncode(docType.toJson());
    final bytes = utf8.encode(jsonString);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Checks if the cached schema is up to date compared to the fetched one.
  Future<bool> isSchemaUpToDate(DocType fetchedDocType) async {
    final newHash = generateSchemaHash(fetchedDocType);

    final query = db.select(db.schemaVersions)
      ..where((t) => t.docTypeName.equals(fetchedDocType.name));
      
    final cachedVersion = await query.getSingleOrNull();

    if (cachedVersion == null) {
      return false; // Not cached at all
    }

    return cachedVersion.schemaHash == newHash;
  }

  /// Updates the schema cache along with the schema version hash.
  Future<void> updateSchemaCache(DocType docType) async {
    final hash = generateSchemaHash(docType);

    await db.transaction(() async {
      // 1. Insert or update the DocType record
      await db.into(db.docTypes).insertOnConflictUpdate(
        DocTypeEntity(
          name: docType.name,
          module: docType.module,
          isSubmittable: docType.isSubmittable,
          istable: docType.istable,
          isSingle: docType.isSingle,
          custom: docType.custom,
          description: docType.description,
        ),
      );

      // 2. Delete old fields and insert new ones
      await (db.delete(db.docFields)..where((t) => t.parent.equals(docType.name))).go();
      
      for (final field in docType.fields) {
        await db.into(db.docFields).insert(
          DocFieldEntity(
            fieldname: field.fieldname,
            parent: docType.name,
            fieldtype: field.fieldtype,
            label: field.label,
            reqd: field.reqd,
            hidden: field.hidden,
            readOnly: field.readOnly,
            options: field.options,
            dependsOn: field.dependsOn,
          ),
        );
      }

      // 3. Update the SchemaVersion hash
      await db.into(db.schemaVersions).insertOnConflictUpdate(
        SchemaVersionEntity(
          docTypeName: docType.name,
          schemaHash: hash,
          lastSync: DateTime.now(),
        ),
      );
    });
  }
}
