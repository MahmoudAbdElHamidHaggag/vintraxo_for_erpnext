import 'package:flutter_test/flutter_test.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/graph/dependency_graph.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_field.dart';

void main() {
  group('MetadataDependencyGraph Engine', () {
    test('resolves topological loading order correctly without cycles', () {
      final graph = MetadataDependencyGraph();

      // DocType C has no dependencies
      graph.addDocType(const DocType(
        name: 'DocType_C',
        module: 'Test',
        fields: [],
      ));

      // DocType B depends on DocType C
      graph.addDocType(const DocType(
        name: 'DocType_B',
        module: 'Test',
        fields: [
          DocField(fieldname: 'link_c', fieldtype: 'Link', label: 'Link C', options: 'DocType_C'),
        ],
      ));

      // DocType A depends on DocType B
      graph.addDocType(const DocType(
        name: 'DocType_A',
        module: 'Test',
        fields: [
          DocField(fieldname: 'link_b', fieldtype: 'Table', label: 'Table B', options: 'DocType_B'),
        ],
      ));

      final order = graph.getSafeLoadingOrder();
      
      // Since C has no dependencies, it must be loaded first, then B, then A.
      expect(order, ['DocType_C', 'DocType_B', 'DocType_A']);
    });

    test('handles circular dependencies gracefully', () {
      final graph = MetadataDependencyGraph();

      // X depends on Y
      graph.addDocType(const DocType(
        name: 'DocType_X',
        module: 'Test',
        fields: [
          DocField(fieldname: 'link_y', fieldtype: 'Link', label: 'Link Y', options: 'DocType_Y'),
        ],
      ));

      // Y depends on X
      graph.addDocType(const DocType(
        name: 'DocType_Y',
        module: 'Test',
        fields: [
          DocField(fieldname: 'link_x', fieldtype: 'Link', label: 'Link X', options: 'DocType_X'),
        ],
      ));

      final order = graph.getSafeLoadingOrder();

      // Should return both X and Y without crashing
      expect(order.length, 2);
      expect(order.contains('DocType_X'), isTrue);
      expect(order.contains('DocType_Y'), isTrue);
    });
  });
}
