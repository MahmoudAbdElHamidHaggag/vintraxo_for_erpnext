import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_schema.freezed.dart';
part 'widget_schema.g.dart';

/// Defines the abstracted generic widget types that the Vintraxo UI Engine understands.
/// This prevents the UI from being tightly coupled to ERPNext's specific field types.
enum WidgetType {
  text,
  longText,
  number,
  checkbox,
  date,
  time,
  datetime,
  link,
  table,
  select,
  currency,
  section,
  column,
  tab,
  heading,
  unknown
}

@freezed
class WidgetSchema with _$WidgetSchema {
  const factory WidgetSchema({
    required String id,
    required WidgetType type,
    required String label,
    @Default(false) bool isRequired,
    @Default(false) bool isReadOnly,
    @Default(false) bool isHidden,
    String? options, // For Link targets or Select options
    String? defaultValue,
    String? description,
    String? dependsOn,
    List<WidgetSchema>? children,
  }) = _WidgetSchema;

  factory WidgetSchema.fromJson(Map<String, dynamic> json) => _$WidgetSchemaFromJson(json);
}
