import 'package:flutter/material.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';
import 'package:intl/intl.dart';

class DateField extends StatelessWidget {
  final WidgetSchema schema;
  final dynamic value;
  final Function(String id, dynamic value) onChanged;

  const DateField({
    super.key,
    required this.schema,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value?.toString() ?? '');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: schema.label,
          helperText: schema.description,
          border: const OutlineInputBorder(),
          suffixIcon: const Icon(Icons.calendar_today),
        ),
        validator: (value) {
          if (schema.isRequired && (value == null || value.isEmpty)) {
            return '${schema.label} is required';
          }
          return null;
        },
        onTap: schema.isReadOnly ? null : () async {
          final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.tryParse(value?.toString() ?? '') ?? DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );
          if (picked != null) {
            final formatted = DateFormat('yyyy-MM-dd').format(picked);
            onChanged(schema.id, formatted);
          }
        },
      ),
    );
  }
}

class TimeField extends StatelessWidget {
  final WidgetSchema schema;
  final dynamic value;
  final Function(String id, dynamic value) onChanged;

  const TimeField({
    super.key,
    required this.schema,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value?.toString() ?? '');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: schema.label,
          helperText: schema.description,
          border: const OutlineInputBorder(),
          suffixIcon: const Icon(Icons.access_time),
        ),
        validator: (value) {
          if (schema.isRequired && (value == null || value.isEmpty)) {
            return '${schema.label} is required';
          }
          return null;
        },
        onTap: schema.isReadOnly ? null : () async {
          // Parse current time or default to now
          TimeOfDay initialTime = TimeOfDay.now();
          if (value != null) {
            final parts = value.toString().split(':');
            if (parts.length >= 2) {
              initialTime = TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
            }
          }

          final TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: initialTime,
          );
          if (picked != null) {
            final formatted = '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}:00';
            onChanged(schema.id, formatted);
          }
        },
      ),
    );
  }
}
