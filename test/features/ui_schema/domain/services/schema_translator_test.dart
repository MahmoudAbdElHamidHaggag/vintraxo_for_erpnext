import 'package:flutter_test/flutter_test.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
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
    test('translates flat DocType fields into nested Sections and Columns', () {
      final docType = DocType(
        name: 'Project',
        module: 'Projects',
        fields: [
          DocField(fieldname: 'sb1', fieldtype: 'Section Break', label: 'Section 1'),
          DocField(fieldname: 'cb1', fieldtype: 'Column Break', label: 'Column 1'),
          DocField(fieldname: 'f1', fieldtype: 'Data', label: 'Field 1'),
          DocField(fieldname: 'f2', fieldtype: 'Data', label: 'Field 2'),
          DocField(fieldname: 'cb2', fieldtype: 'Column Break', label: 'Column 2'),
          DocField(fieldname: 'f3', fieldtype: 'Data', label: 'Field 3'),
          DocField(fieldname: 'sb2', fieldtype: 'Section Break', label: 'Section 2'),
          DocField(fieldname: 'f4', fieldtype: 'Data', label: 'Field 4'),
        ],
      );

      final schemas = SchemaTranslator.translateDocType(docType);

      expect(schemas.length, 2); // Two sections
      
      // Section 1
      expect(schemas[0].type, WidgetType.section);
      expect(schemas[0].children!.length, 2); // Two columns
      
      // Column 1 in Section 1
      expect(schemas[0].children![0].type, WidgetType.column);
      expect(schemas[0].children![0].children!.length, 2); // f1, f2
      expect(schemas[0].children![0].children![0].id, 'f1');
      
      // Column 2 in Section 1
      expect(schemas[0].children![1].type, WidgetType.column);
      expect(schemas[0].children![1].children!.length, 1); // f3
      expect(schemas[0].children![1].children![0].id, 'f3');

      // Section 2
      expect(schemas[1].type, WidgetType.section);
      expect(schemas[1].children!.length, 1); // f4 (directly under section)
      expect(schemas[1].children![0].id, 'f4');
    });
  });
}
