import 'package:flutter_test/flutter_test.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/services/schema_translator.dart';

void main() {
  group('SchemaTranslator', () {
    test('translates Data field to WidgetType.text', () {
      final field = DocField(fieldname: 'name', fieldtype: 'Data', label: 'Name');
      final schema = SchemaTranslator.translateField(field);

      expect(schema.type, WidgetType.text);
      expect(schema.id, 'name');
      expect(schema.label, 'Name');
    });

    test('translates Int and Float to WidgetType.number', () {
      final field1 = DocField(fieldname: 'age', fieldtype: 'Int', label: 'Age');
      final field2 = DocField(fieldname: 'amount', fieldtype: 'Float', label: 'Amount');

      expect(SchemaTranslator.translateField(field1).type, WidgetType.number);
      expect(SchemaTranslator.translateField(field2).type, WidgetType.number);
    });

    test('translates Link and Dynamic Link to WidgetType.link', () {
      final field1 = DocField(fieldname: 'customer', fieldtype: 'Link', label: 'Customer', options: 'Customer');
      
      final schema = SchemaTranslator.translateField(field1);
      expect(schema.type, WidgetType.link);
      expect(schema.options, 'Customer');
    });

    test('translates Date and Time fields correctly', () {
      final dateField = DocField(fieldname: 'date', fieldtype: 'Date', label: 'Date');
      final timeField = DocField(fieldname: 'time', fieldtype: 'Time', label: 'Time');
      final datetimeField = DocField(fieldname: 'datetime', fieldtype: 'Datetime', label: 'Datetime');

      expect(SchemaTranslator.translateField(dateField).type, WidgetType.date);
      expect(SchemaTranslator.translateField(timeField).type, WidgetType.time);
      expect(SchemaTranslator.translateField(datetimeField).type, WidgetType.datetime);
    });

    test('maps boolean properties correctly', () {
      final field = DocField(
        fieldname: 'test',
        fieldtype: 'Data',
        label: 'Test',
        reqd: 1,
        hidden: 1,
        readOnly: 0,
      );

      final schema = SchemaTranslator.translateField(field);
      expect(schema.isRequired, true);
      expect(schema.isHidden, true);
      expect(schema.isReadOnly, false);
    });

    test('returns WidgetType.unknown for unsupported fields', () {
      final field = DocField(fieldname: 'geo', fieldtype: 'Geolocation', label: 'Location');
      final schema = SchemaTranslator.translateField(field);

      expect(schema.type, WidgetType.unknown);
    });
  });
}
