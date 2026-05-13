// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetSchema _$WidgetSchemaFromJson(Map<String, dynamic> json) =>
    _WidgetSchema(
      id: json['id'] as String,
      type: $enumDecode(_$WidgetTypeEnumMap, json['type']),
      label: json['label'] as String,
      isRequired: json['isRequired'] as bool? ?? false,
      isReadOnly: json['isReadOnly'] as bool? ?? false,
      isHidden: json['isHidden'] as bool? ?? false,
      options: json['options'] as String?,
      defaultValue: json['defaultValue'] as String?,
      description: json['description'] as String?,
      dependsOn: json['dependsOn'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => WidgetSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WidgetSchemaToJson(_WidgetSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$WidgetTypeEnumMap[instance.type]!,
      'label': instance.label,
      'isRequired': instance.isRequired,
      'isReadOnly': instance.isReadOnly,
      'isHidden': instance.isHidden,
      'options': instance.options,
      'defaultValue': instance.defaultValue,
      'description': instance.description,
      'dependsOn': instance.dependsOn,
      'children': instance.children,
    };

const _$WidgetTypeEnumMap = {
  WidgetType.text: 'text',
  WidgetType.longText: 'longText',
  WidgetType.number: 'number',
  WidgetType.checkbox: 'checkbox',
  WidgetType.date: 'date',
  WidgetType.time: 'time',
  WidgetType.datetime: 'datetime',
  WidgetType.link: 'link',
  WidgetType.table: 'table',
  WidgetType.select: 'select',
  WidgetType.currency: 'currency',
  WidgetType.section: 'section',
  WidgetType.column: 'column',
  WidgetType.tab: 'tab',
  WidgetType.heading: 'heading',
  WidgetType.unknown: 'unknown',
};
