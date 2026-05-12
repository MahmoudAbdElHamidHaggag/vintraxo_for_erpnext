import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_field.freezed.dart';
part 'doc_field.g.dart';

@freezed
class DocField with _$DocField {
  const factory DocField({
    required String fieldname,
    required String fieldtype,
    required String label,
    int? reqd,
    int? hidden,
    int? readOnly,
    String? options,
    String? defaultValue,
    String? description,
    int? inListView,
    int? inStandardFilter,
    int? bold,
    int? allowOnSubmit,
    String? dependsOn,
    String? mandatoryDependsOn,
    String? readOnlyDependsOn,
  }) = _DocField;

  factory DocField.fromJson(Map<String, dynamic> json) => _$DocFieldFromJson(json);
}
