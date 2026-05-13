import 'dart:convert';
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

  @override
  Future<List<Map<String, dynamic>>> searchLink({
    required String docTypeName,
    required String query,
  }) async {
    try {
      final response = await dio.post(
        '/api/method/frappe.desk.search.search_link',
        data: {
          'txt': query,
          'doctype': docTypeName,
          'ignore_user_permissions': 0,
        },
      );

      if (response.statusCode == 200 && response.data['results'] != null) {
        final List<dynamic> results = response.data['results'];
        return results.map((r) => Map<String, dynamic>.from(r)).toList();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to search link for $docTypeName: $e');
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getDocuments({
    required String docTypeName,
    List<String>? fields,
    Map<String, dynamic>? filters,
    String? orderBy,
    int? limitStart,
    int? limitLength,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        if (fields != null) 'fields': jsonEncode(fields),
        if (filters != null) 'filters': jsonEncode(filters),
        if (orderBy != null) 'order_by': orderBy,
        if (limitStart != null) 'limit_start': limitStart,
        if (limitLength != null) 'limit_page_length': limitLength,
      };

      final response = await dio.get(
        '/api/resource/$docTypeName',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        final List<dynamic> data = response.data['data'];
        return data.map((r) => Map<String, dynamic>.from(r)).toList();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to fetch documents for $docTypeName: $e');
    }
  }

  @override
  Future<List<String>> getDocTypesByModule(String moduleName) async {
    try {
      final response = await dio.get(
        '/api/resource/DocType',
        queryParameters: {
          'filters': jsonEncode([['module', '=', moduleName], ['istable', '=', 0], ['issingle', '=', 0]]),
          'fields': '["name"]',
          'limit_page_length': 0,
        },
      );

      if (response.statusCode == 200 && response.data['data'] != null) {
        final List<dynamic> data = response.data['data'];
        return data.map((r) => r['name'] as String).toList();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to fetch DocTypes for module $moduleName: $e');
    }
  }
}
