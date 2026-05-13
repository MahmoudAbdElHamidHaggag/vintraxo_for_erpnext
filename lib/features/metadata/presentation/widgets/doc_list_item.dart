import 'package:flutter/material.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';

class DocTypeListItem extends StatelessWidget {
  final DocType docType;
  final Map<String, dynamic> data;
  final VoidCallback onTap;

  const DocTypeListItem({
    super.key,
    required this.docType,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Determine which fields to show in the list view
    // ERPNext has 'in_list_view', but we'll fallback to some common fields
    final titleField = data['name'] ?? 'No Name';
    
    // Pick 2-3 secondary fields to show in the subtitle
    final secondaryFields = docType.fields
        .where((f) => f.fieldname != 'name' && f.label != null && data[f.fieldname] != null)
        .take(3)
        .map((f) => '${f.label}: ${data[f.fieldname]}')
        .join(' • ');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          titleField,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: secondaryFields.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  secondaryFields,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                ),
              )
            : null,
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
