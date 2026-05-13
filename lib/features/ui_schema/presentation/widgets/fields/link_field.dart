import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';

class LinkField extends ConsumerWidget {
  final WidgetSchema schema;
  final dynamic value;
  final Function(String id, dynamic value) onChanged;

  const LinkField({
    super.key,
    required this.schema,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repository = ref.watch(metadataRepositoryProvider);
    final controller = TextEditingController(text: value?.toString() ?? '');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) async {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              }
              
              final results = await repository.searchLink(
                docTypeName: schema.options ?? '',
                query: textEditingValue.text,
              );
              
              return results.map((r) => r['value'] as String);
            },
            onSelected: (String selection) {
              onChanged(schema.id, selection);
            },
            fieldViewBuilder: (context, textController, focusNode, onFieldSubmitted) {
              // Sync with external value if needed
              if (textController.text != (value?.toString() ?? '')) {
                // We should be careful with setting text here to avoid loops
              }

              return TextFormField(
                controller: textController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  labelText: schema.label,
                  helperText: schema.description,
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(Icons.search),
                ),
                validator: (value) {
                  if (schema.isRequired && (value == null || value.isEmpty)) {
                    return '${schema.label} is required';
                  }
                  return null;
                },
                readOnly: schema.isReadOnly,
                onFieldSubmitted: (value) => onFieldSubmitted(),
              );
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 4.0,
                  child: SizedBox(
                    width: constraints.maxWidth,
                    height: 200,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String option = options.elementAt(index);
                        return ListTile(
                          title: Text(option),
                          onTap: () => onSelected(option),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
