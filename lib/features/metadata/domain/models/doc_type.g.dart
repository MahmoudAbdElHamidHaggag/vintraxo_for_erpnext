// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocType _$DocTypeFromJson(Map<String, dynamic> json) => _DocType(
  name: json['name'] as String,
  module: json['module'] as String,
  isSubmittable: (json['isSubmittable'] as num?)?.toInt(),
  istable: (json['istable'] as num?)?.toInt(),
  isSingle: (json['isSingle'] as num?)?.toInt(),
  custom: (json['custom'] as num?)?.toInt(),
  description: json['description'] as String?,
  titleField: json['titleField'] as String?,
  searchFields: json['searchFields'] as String?,
  sortField: json['sortField'] as String?,
  sortOrder: json['sortOrder'] as String?,
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map((e) => DocField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DocTypeToJson(_DocType instance) => <String, dynamic>{
  'name': instance.name,
  'module': instance.module,
  'isSubmittable': instance.isSubmittable,
  'istable': instance.istable,
  'isSingle': instance.isSingle,
  'custom': instance.custom,
  'description': instance.description,
  'titleField': instance.titleField,
  'searchFields': instance.searchFields,
  'sortField': instance.sortField,
  'sortOrder': instance.sortOrder,
  'fields': instance.fields,
};
