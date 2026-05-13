import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';

class SchemaTranslator {
  /// Translates an entire ERPNext DocType to a list of WidgetSchemas,
  /// grouping fields into Sections and Columns based on ERPNext's layout breaks.
  static List<WidgetSchema> translateDocType(DocType docType) {
    final List<WidgetSchema> rootWidgets = [];
    WidgetSchema? currentSection;
    WidgetSchema? currentColumn;

    for (final field in docType.fields) {
      final widget = translateField(field);

      if (widget.type == WidgetType.section) {
        currentSection = widget.copyWith(children: []);
        currentColumn = null;
        rootWidgets.add(currentSection);
      } else if (widget.type == WidgetType.column) {
        if (currentSection == null) {
          currentSection = WidgetSchema(
            id: 'default_section_${rootWidgets.length}',
            type: WidgetType.section,
            label: '',
            children: [],
          );
          rootWidgets.add(currentSection);
        }
        currentColumn = widget.copyWith(children: []);
        
        final sectionIndex = rootWidgets.indexOf(currentSection);
        if (sectionIndex != -1) {
          final updatedSection = currentSection.copyWith(
            children: [...?currentSection.children, currentColumn],
          );
          rootWidgets[sectionIndex] = updatedSection;
          currentSection = updatedSection;
        }
      } else {
        if (currentColumn != null && currentSection != null) {
          final updatedColumn = currentColumn.copyWith(
            children: [...?currentColumn.children, widget],
          );
          
          final sectionIndex = rootWidgets.indexOf(currentSection);
          if (sectionIndex != -1) {
            final updatedChildren = List<WidgetSchema>.from(currentSection.children ?? []);
            final columnIndex = updatedChildren.indexWhere((c) => c.id == currentColumn!.id);
            
            if (columnIndex != -1) {
              updatedChildren[columnIndex] = updatedColumn;
              final updatedSection = currentSection.copyWith(children: updatedChildren);
              rootWidgets[sectionIndex] = updatedSection;
              currentSection = updatedSection;
              currentColumn = updatedColumn;
            } else {
              // Column not found in section for some reason, add to section directly
              final updatedSection = currentSection.copyWith(
                children: [...?currentSection.children, widget],
              );
              rootWidgets[sectionIndex] = updatedSection;
              currentSection = updatedSection;
            }
          }
        } else if (currentSection != null) {
          final updatedSection = currentSection.copyWith(
            children: [...?currentSection.children, widget],
          );
          final index = rootWidgets.indexOf(currentSection);
          if (index != -1) {
            rootWidgets[index] = updatedSection;
            currentSection = updatedSection;
          }
        } else {
          currentSection = WidgetSchema(
            id: 'default_section_top',
            type: WidgetType.section,
            label: '',
            children: [widget],
          );
          rootWidgets.add(currentSection);
        }
      }
    }

    return rootWidgets;
  }

  /// Translates a single ERPNext DocField into a WidgetSchema
  static WidgetSchema translateField(DocField field) {
    return WidgetSchema(
      id: field.fieldname,
      label: field.label ?? field.fieldname, // Fallback to fieldname
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
      case 'Section Break':
        return WidgetType.section;
      case 'Column Break':
        return WidgetType.column;
      case 'Tab Break':
        return WidgetType.tab;
      case 'Heading':
        return WidgetType.heading;
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
