import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/services/schema_translator.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/dynamic_form_renderer.dart';

class DocTypeViewScreen extends ConsumerWidget {
  final String docTypeName;

  const DocTypeViewScreen({super.key, required this.docTypeName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docTypeAsync = ref.watch(docTypeProvider(docTypeName));

    return Scaffold(
      appBar: AppBar(
        title: Text('New $docTypeName'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Handle save
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Save functionality coming soon!')),
              );
            },
          ),
        ],
      ),
      body: docTypeAsync.when(
        data: (docType) {
          final schemas = SchemaTranslator.translateDocType(docType);
          return DynamicFormRenderer(
            schemas: schemas,
            initialValues: const {},
            onChanged: (values) {
              debugPrint('Form values updated: $values');
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text('Error loading $docTypeName: $err', textAlign: TextAlign.center),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.refresh(docTypeProvider(docTypeName)),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
