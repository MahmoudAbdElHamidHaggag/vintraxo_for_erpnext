import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';

class SchemaTranslator {
  /// Translates an entire ERPNext DocType to a list of WidgetSchemas
  static List<WidgetSchema> translateDocType(DocType docType) {
    return docType.fields.map((f) => translateField(f)).toList();
  }

  /// Translates a single ERPNext DocField into a WidgetSchema
  static WidgetSchema translateField(DocField field) {
    return WidgetSchema(
      id: field.fieldname,
      label: field.label,
      type: _mapFieldType(field.fieldtype),
      isRequired: field.reqd == 1,
      isReadOnly: field.readOnly == 1,
      isHidden: field.hidden == 1,
      options: field.options,
      defaultValue: field.defaultValue,
      description: field.description,
      dependsOn: field.dependsOn,
    );
  }

  /// Maps ERPNext specific field types to our abstract WidgetType
  static WidgetType _mapFieldType(String erpNextType) {
    switch (erpNextType) {
      case 'Data':
      case 'Read Only':
      case 'Password':
      case 'Barcode':
      case 'Color':
        return WidgetType.text;
      case 'Text':
      case 'Small Text':
      case 'Long Text':
      case 'Text Editor':
      case 'HTML Editor':
        return WidgetType.longText;
      case 'Int':
      case 'Float':
      case 'Percent':
        return WidgetType.number;
      case 'Currency':
        return WidgetType.currency;
      case 'Check':
        return WidgetType.checkbox;
      case 'Date':
        return WidgetType.date;
      case 'Time':
        return WidgetType.time;
      case 'Datetime':
        return WidgetType.datetime;
      case 'Link':
      case 'Dynamic Link':
        return WidgetType.link;
      case 'Table':
      case 'Table MultiSelect':
        return WidgetType.table;
      case 'Select':
        return WidgetType.select;
      case 'Section Break':
      case 'Column Break':
      case 'HTML':
      case 'Button':
      case 'Image':
      case 'Attach':
      case 'Attach Image':
      case 'Signature':
      case 'Geolocation':
      default:
        // For non-input or unsupported fields, we return unknown for now
        // A robust UI Engine handles Unknown by ignoring it or showing a placeholder.
        return WidgetType.unknown;
    }
  }
}
