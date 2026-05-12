import 'package:freezed_annotation/freezed_annotation.dart';
import 'doc_field.dart';

part 'doc_type.freezed.dart';
part 'doc_type.g.dart';

@freezed
class DocType with _$DocType {
  const factory DocType({
    required String name,
    required String module,
    int? isSubmittable,
    int? istable,
    int? isSingle,
    int? custom,
    String? description,
    String? titleField,
    String? searchFields,
    String? sortField,
    String? sortOrder,
    @Default([]) List<DocField> fields,
  }) = _DocType;

  factory DocType.fromJson(Map<String, dynamic> json) => _$DocTypeFromJson(json);
}
