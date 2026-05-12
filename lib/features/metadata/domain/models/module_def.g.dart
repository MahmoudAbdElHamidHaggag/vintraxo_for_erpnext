// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModuleDef _$ModuleDefFromJson(Map<String, dynamic> json) => _ModuleDef(
  moduleName: json['module_name'] as String,
  appName: json['appName'] as String?,
  custom: (json['custom'] as num?)?.toInt(),
  restrictToDomain: json['restrictToDomain'] as String?,
);

Map<String, dynamic> _$ModuleDefToJson(_ModuleDef instance) =>
    <String, dynamic>{
      'module_name': instance.moduleName,
      'appName': instance.appName,
      'custom': instance.custom,
      'restrictToDomain': instance.restrictToDomain,
    };
