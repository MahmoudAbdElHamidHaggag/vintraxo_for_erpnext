import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_def.freezed.dart';
part 'module_def.g.dart';

@freezed
class ModuleDef with _$ModuleDef {
  const factory ModuleDef({
    @JsonKey(name: 'module_name') required String moduleName,
    String? appName,
    int? custom,
    String? restrictToDomain,
  }) = _ModuleDef;

  factory ModuleDef.fromJson(Map<String, dynamic> json) => _$ModuleDefFromJson(json);
}
