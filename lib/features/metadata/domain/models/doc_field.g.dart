// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocField _$DocFieldFromJson(Map<String, dynamic> json) => _DocField(
  fieldname: json['fieldname'] as String,
  fieldtype: json['fieldtype'] as String,
  label: json['label'] as String?,
  reqd: (json['reqd'] as num?)?.toInt(),
  hidden: (json['hidden'] as num?)?.toInt(),
  readOnly: (json['readOnly'] as num?)?.toInt(),
  options: json['options'] as String?,
  defaultValue: json['defaultValue'] as String?,
  description: json['description'] as String?,
  inListView: (json['inListView'] as num?)?.toInt(),
  inStandardFilter: (json['inStandardFilter'] as num?)?.toInt(),
  bold: (json['bold'] as num?)?.toInt(),
  allowOnSubmit: (json['allowOnSubmit'] as num?)?.toInt(),
  dependsOn: json['dependsOn'] as String?,
  mandatoryDependsOn: json['mandatoryDependsOn'] as String?,
  readOnlyDependsOn: json['readOnlyDependsOn'] as String?,
);

Map<String, dynamic> _$DocFieldToJson(_DocField instance) => <String, dynamic>{
  'fieldname': instance.fieldname,
  'fieldtype': instance.fieldtype,
  'label': instance.label,
  'reqd': instance.reqd,
  'hidden': instance.hidden,
  'readOnly': instance.readOnly,
  'options': instance.options,
  'defaultValue': instance.defaultValue,
  'description': instance.description,
  'inListView': instance.inListView,
  'inStandardFilter': instance.inStandardFilter,
  'bold': instance.bold,
  'allowOnSubmit': instance.allowOnSubmit,
  'dependsOn': instance.dependsOn,
  'mandatoryDependsOn': instance.mandatoryDependsOn,
  'readOnlyDependsOn': instance.readOnlyDependsOn,
};
