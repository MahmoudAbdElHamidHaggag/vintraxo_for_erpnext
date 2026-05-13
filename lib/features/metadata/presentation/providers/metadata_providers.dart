import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/core/network/dio_provider.dart';
import 'package:vintraxo_for_erpnext/features/metadata/data/repositories/metadata_repository.dart';
import 'package:vintraxo_for_erpnext/features/metadata/data/sources/erpnext_metadata_repository.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/module_def.dart';

final metadataRepositoryProvider = Provider<MetadataRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return ERPNextMetadataRepository(dio: dio);
});

final docTypeProvider = FutureProvider.family<DocType, String>((ref, docTypeName) async {
  final repository = ref.watch(metadataRepositoryProvider);
  return repository.getDocType(docTypeName);
});

final modulesProvider = FutureProvider<List<ModuleDef>>((ref) async {
  final repository = ref.watch(metadataRepositoryProvider);
  return repository.getModules();
});
