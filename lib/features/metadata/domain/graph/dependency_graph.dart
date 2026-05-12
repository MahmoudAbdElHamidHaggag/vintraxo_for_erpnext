import 'dart:collection';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/doc_type.dart';

/// Represents a node in the metadata dependency graph.
class DependencyNode {
  final String docTypeName;
  final Set<String> dependencies; // Other DocTypes this one depends on
  final DocType? docTypeData;

  DependencyNode(this.docTypeName, {this.docTypeData}) : dependencies = {};

  void addDependency(String dependencyName) {
    if (dependencyName != docTypeName) {
      dependencies.add(dependencyName);
    }
  }
}

/// Analyzes metadata relationships and dependencies to resolve loading order
/// and prevent circular dependency issues.
class MetadataDependencyGraph {
  final Map<String, DependencyNode> _nodes = {};

  /// Adds a DocType to the graph and extracts its dependencies.
  void addDocType(DocType docType) {
    final node = _nodes.putIfAbsent(docType.name, () => DependencyNode(docType.name, docTypeData: docType));

    for (final field in docType.fields) {
      if (field.fieldtype == 'Link' || field.fieldtype == 'Table' || field.fieldtype == 'Dynamic Link') {
        if (field.options != null && field.options!.isNotEmpty) {
          // In ERPNext, options for Link/Table fields usually contain the target DocType name
          node.addDependency(field.options!);
          // Ensure the dependency node exists
          _nodes.putIfAbsent(field.options!, () => DependencyNode(field.options!));
        }
      }
    }
  }

  /// Returns a safe loading order using topological sorting.
  /// Throws an exception if a circular dependency cannot be broken (though in ERPNext
  /// circular dependencies do exist, we will handle them gracefully).
  List<String> getSafeLoadingOrder() {
    final List<String> sorted = [];
    final Map<String, int> inDegree = {};
    
    // Initialize in-degrees
    for (final key in _nodes.keys) {
      inDegree[key] = 0;
    }

    // Calculate in-degrees
    for (final node in _nodes.values) {
      for (final dep in node.dependencies) {
        if (inDegree.containsKey(dep)) {
          inDegree[dep] = inDegree[dep]! + 1;
        }
      }
    }

    // Queue for nodes with no incoming edges (no dependencies)
    final Queue<String> queue = Queue();
    for (final entry in inDegree.entries) {
      if (entry.value == 0) {
        queue.add(entry.key);
      }
    }

    while (queue.isNotEmpty) {
      final current = queue.removeFirst();
      sorted.add(current);

      final node = _nodes[current];
      if (node != null) {
        for (final dep in node.dependencies) {
          if (inDegree.containsKey(dep)) {
            inDegree[dep] = inDegree[dep]! - 1;
            if (inDegree[dep] == 0) {
              queue.add(dep);
            }
          }
        }
      }
    }

    // If sorted length != _nodes length, there is a cycle.
    // In ERPNext, we might just append the remaining cyclic nodes to the end
    // and handle lazy loading of their relationships.
    if (sorted.length != _nodes.length) {
      for (final key in _nodes.keys) {
        if (!sorted.contains(key)) {
          sorted.add(key);
        }
      }
    }

    // Since topological sort gives us nodes with no dependencies first,
    // to "load safely", we actually want to load the dependencies first.
    // Therefore, we reverse the list.
    return sorted.reversed.toList();
  }
}
