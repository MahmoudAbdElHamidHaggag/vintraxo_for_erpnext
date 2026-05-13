import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';

final documentListProvider = FutureProvider.family<List<Map<String, dynamic>>, String>((ref, docTypeName) async {
  final repository = ref.watch(metadataRepositoryProvider);
  
  // In a real scenario, we might want to fetch 'in_list_view' fields first.
  // For now, we fetch 'name' and any other common fields.
  return repository.getDocuments(
    docTypeName: docTypeName,
    fields: ['*'], // Fetch all fields for simplicity in the beginning
    limitLength: 50,
  );
});
