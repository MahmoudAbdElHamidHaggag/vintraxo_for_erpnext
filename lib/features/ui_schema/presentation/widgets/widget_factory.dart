import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/fields/link_field.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/fields/date_time_fields.dart';

class WidgetFactory {
  static Widget buildWidget({
    required WidgetSchema schema,
    required Map<String, dynamic> values,
    required Function(String id, dynamic value) onChanged,
  }) {
    if (schema.isHidden) return const SizedBox.shrink();

    switch (schema.type) {
      case WidgetType.text:
        return _buildTextField(schema, values, onChanged);
      case WidgetType.number:
        return _buildNumberField(schema, values, onChanged);
      case WidgetType.checkbox:
        return _buildCheckboxField(schema, values, onChanged);
      case WidgetType.select:
        return _buildSelectField(schema, values, onChanged);
      case WidgetType.date:
        return DateField(schema: schema, value: values[schema.id], onChanged: onChanged);
      case WidgetType.time:
        return TimeField(schema: schema, value: values[schema.id], onChanged: onChanged);
      case WidgetType.link:
        return LinkField(
          schema: schema,
          value: values[schema.id],
          onChanged: onChanged,
        );
      case WidgetType.section:
        return _buildSection(schema, values, onChanged);
      case WidgetType.column:
        return _buildColumn(schema, values, onChanged);
      case WidgetType.heading:
        return _buildHeading(schema);
      default:
        return _buildUnknownField(schema);
    }
  }

  static Widget _buildTextField(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: values[schema.id]?.toString() ?? schema.defaultValue,
        decoration: InputDecoration(
          labelText: schema.label,
          helperText: schema.description,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (schema.isRequired && (value == null || value.isEmpty)) {
            return '${schema.label} is required';
          }
          return null;
        },
        onChanged: (value) => onChanged(schema.id, value),
      ),
    );
  }

  static Widget _buildNumberField(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: values[schema.id]?.toString() ?? schema.defaultValue,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: schema.label,
          helperText: schema.description,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (schema.isRequired && (value == null || value.isEmpty)) {
            return '${schema.label} is required';
          }
          return null;
        },
        onChanged: (value) => onChanged(schema.id, num.tryParse(value)),
      ),
    );
  }

  static Widget _buildCheckboxField(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    return CheckboxListTile(
      title: Text(schema.label),
      subtitle: schema.description != null ? Text(schema.description!) : null,
      value: values[schema.id] == 1 || values[schema.id] == true,
      onChanged: schema.isReadOnly ? null : (value) => onChanged(schema.id, value),
    );
  }

  static Widget _buildSelectField(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    final options = schema.options?.split('\n') ?? [];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: values[schema.id]?.toString(),
        decoration: InputDecoration(
          labelText: schema.label,
          helperText: schema.description,
          border: const OutlineInputBorder(),
        ),
        items: options.map((opt) => DropdownMenuItem(value: opt, child: Text(opt))).toList(),
        validator: (value) {
          if (schema.isRequired && (value == null || value.isEmpty)) {
            return '${schema.label} is required';
          }
          return null;
        },
        onChanged: schema.isReadOnly ? null : (value) => onChanged(schema.id, value),
      ),
    );
  }

  static Widget _buildSection(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (schema.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text(
              schema.label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ...?schema.children?.map((child) => buildWidget(
          schema: child,
          values: values,
          onChanged: onChanged,
        )),
      ],
    );
  }

  static Widget _buildColumn(WidgetSchema schema, Map<String, dynamic> values, Function(String, dynamic) onChanged) {
    // For now, columns just stack children.
    // In the Renderer, we will use a LayoutBuilder/GridView for side-by-side columns.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...?schema.children?.map((child) => buildWidget(
          schema: child,
          values: values,
          onChanged: onChanged,
        )),
      ],
    );
  }

  static Widget _buildHeading(WidgetSchema schema) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        schema.label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blueGrey),
      ),
    );
  }

  static Widget _buildUnknownField(WidgetSchema schema) {
    return ListTile(
      title: Text('${schema.label} (Unsupported: ${schema.type})'),
      leading: const Icon(Icons.warning, color: Colors.amber),
    );
  }
}
