import 'package:dio/dio.dart';
import 'package:vintraxo_for_erpnext/features/metadata/data/repositories/metadata_repository.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/module_def.dart';

class ERPNextMetadataRepository implements MetadataRepository {
  final Dio dio;

  ERPNextMetadataRepository({required this.dio});

  @override
  Future<List<ModuleDef>> getModules() async {
    try {
      final response = await dio.get(
        '/api/resource/Module Def',
        queryParameters: {
          'fields': '["module_name", "app_name", "custom", "restrict_to_domain"]',
          'limit_page_length': 0, // Fetch all
        },
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => ModuleDef.fromJson(json)).toList();
      }
      throw Exception('Failed to load modules: Invalid response format');
    } catch (e) {
      throw Exception('Failed to fetch modules: $e');
    }
  }

  @override
  Future<DocType> getDocType(String docTypeName) async {
    try {
      final response = await dio.get(
        '/api/resource/DocType/$docTypeName',
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        return DocType.fromJson(response.data['data']);
      }
      throw Exception('Failed to load DocType: Invalid response format');
    } catch (e) {
      throw Exception('Failed to fetch DocType $docTypeName: $e');
    }
  }
}
