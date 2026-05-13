import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/document_list_provider.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/widgets/doc_list_item.dart';

class DocTypeListScreen extends ConsumerWidget {
  final String docTypeName;

  const DocTypeListScreen({super.key, required this.docTypeName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docTypeAsync = ref.watch(docTypeProvider(docTypeName));
    final documentsAsync = ref.watch(documentListProvider(docTypeName));

    return Scaffold(
      appBar: AppBar(
        title: Text(docTypeName),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.push('/doctype/$docTypeName');
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.refresh(documentListProvider(docTypeName));
            },
          ),
        ],
      ),
      body: docTypeAsync.when(
        data: (docType) {
          return documentsAsync.when(
            data: (docs) {
              if (docs.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.list_alt, size: 64, color: Colors.grey),
                      const SizedBox(height: 16),
                      Text('No $docTypeName found'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => context.push('/doctype/$docTypeName'),
                        child: Text('Create First $docTypeName'),
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  final data = docs[index];
                  return DocTypeListItem(
                    docType: docType,
                    data: data,
                    onTap: () {
                      // context.push('/doctype/$docTypeName/${data['name']}');
                      // For now, just show a snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Selected: ${data['name']}')),
                      );
                    },
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error loading documents: $err')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error loading metadata: $err')),
      ),
    );
  }
}
