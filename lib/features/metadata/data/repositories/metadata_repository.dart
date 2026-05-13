import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/module_def.dart';

abstract class MetadataRepository {
  /// Fetches a list of modules accessible by the current user.
  Future<List<ModuleDef>> getModules();

  /// Fetches the DocType metadata including its fields.
  Future<DocType> getDocType(String docTypeName);

  /// Searches for records in a linked DocType.
  Future<List<Map<String, dynamic>>> searchLink({
    required String docTypeName,
    required String query,
  });

  /// Fetches a list of documents (records) for a specific DocType.
  Future<List<Map<String, dynamic>>> getDocuments({
    required String docTypeName,
    List<String>? fields,
    Map<String, dynamic>? filters,
    String? orderBy,
    int? limitStart,
    int? limitLength,
  });
}
