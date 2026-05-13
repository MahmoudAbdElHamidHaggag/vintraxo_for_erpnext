import 'package:flutter/material.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/domain/models/widget_schema.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/widget_factory.dart';

class DynamicFormRenderer extends StatefulWidget {
  final List<WidgetSchema> schemas;
  final Map<String, dynamic> initialValues;
  final Function(Map<String, dynamic> values)? onChanged;

  const DynamicFormRenderer({
    super.key,
    required this.schemas,
    this.initialValues = const {},
    this.onChanged,
  });

  @override
  State<DynamicFormRenderer> createState() => _DynamicFormRendererState();
}

class _DynamicFormRendererState extends State<DynamicFormRenderer> {
  late Map<String, dynamic> _values;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _values = Map.from(widget.initialValues);
  }

  void _handleUpdate(String id, dynamic value) {
    setState(() {
      _values[id] = value;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(_values);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: widget.schemas.length,
        itemBuilder: (context, index) {
          final schema = widget.schemas[index];
          
          if (schema.type == WidgetType.section) {
            return _buildResponsiveSection(schema);
          }

          return WidgetFactory.buildWidget(
            schema: schema,
            values: _values,
            onChanged: _handleUpdate,
          );
        },
      ),
    );
  }

  Widget _buildResponsiveSection(WidgetSchema section) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (section.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
            child: Text(
              section.label,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ),
        
        // Check if section has columns
        if (section.children?.any((c) => c.type == WidgetType.column) ?? false)
          _buildColumnLayout(section.children!)
        else
          ...?section.children?.map((child) => WidgetFactory.buildWidget(
            schema: child,
            values: _values,
            onChanged: _handleUpdate,
          )),
          
        const Divider(height: 32),
      ],
    );
  }

  Widget _buildColumnLayout(List<WidgetSchema> children) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 600;
        
        if (!isWide) {
          // Stack columns on narrow screens
          return Column(
            children: children.map((c) => WidgetFactory.buildWidget(
              schema: c,
              values: _values,
              onChanged: _handleUpdate,
            )).toList(),
          );
        }

        // Horizontal layout for columns on wide screens
        final columnCount = children.where((c) => c.type == WidgetType.column).length;
        if (columnCount == 0) return const SizedBox.shrink();

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children.map((c) {
            if (c.type == WidgetType.column) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: WidgetFactory.buildWidget(
                    schema: c,
                    values: _values,
                    onChanged: _handleUpdate,
                  ),
                ),
              );
            }
            // If there's a field mixed with columns (rare in ERPNext but possible)
            return WidgetFactory.buildWidget(
              schema: c,
              values: _values,
              onChanged: _handleUpdate,
            );
          }).toList(),
        );
      },
    );
  }
}
