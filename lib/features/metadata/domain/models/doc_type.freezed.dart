// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocType {

 String get name; String get module; int? get isSubmittable; int? get istable; int? get isSingle; int? get custom; String? get description; String? get titleField; String? get searchFields; String? get sortField; String? get sortOrder; List<DocField> get fields;
/// Create a copy of DocType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocTypeCopyWith<DocType> get copyWith => _$DocTypeCopyWithImpl<DocType>(this as DocType, _$identity);

  /// Serializes this DocType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocType&&(identical(other.name, name) || other.name == name)&&(identical(other.module, module) || other.module == module)&&(identical(other.isSubmittable, isSubmittable) || other.isSubmittable == isSubmittable)&&(identical(other.istable, istable) || other.istable == istable)&&(identical(other.isSingle, isSingle) || other.isSingle == isSingle)&&(identical(other.custom, custom) || other.custom == custom)&&(identical(other.description, description) || other.description == description)&&(identical(other.titleField, titleField) || other.titleField == titleField)&&(identical(other.searchFields, searchFields) || other.searchFields == searchFields)&&(identical(other.sortField, sortField) || other.sortField == sortField)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.fields, fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,module,isSubmittable,istable,isSingle,custom,description,titleField,searchFields,sortField,sortOrder,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'DocType(name: $name, module: $module, isSubmittable: $isSubmittable, istable: $istable, isSingle: $isSingle, custom: $custom, description: $description, titleField: $titleField, searchFields: $searchFields, sortField: $sortField, sortOrder: $sortOrder, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $DocTypeCopyWith<$Res>  {
  factory $DocTypeCopyWith(DocType value, $Res Function(DocType) _then) = _$DocTypeCopyWithImpl;
@useResult
$Res call({
 String name, String module, int? isSubmittable, int? istable, int? isSingle, int? custom, String? description, String? titleField, String? searchFields, String? sortField, String? sortOrder, List<DocField> fields
});




}
/// @nodoc
class _$DocTypeCopyWithImpl<$Res>
    implements $DocTypeCopyWith<$Res> {
  _$DocTypeCopyWithImpl(this._self, this._then);

  final DocType _self;
  final $Res Function(DocType) _then;

/// Create a copy of DocType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? module = null,Object? isSubmittable = freezed,Object? istable = freezed,Object? isSingle = freezed,Object? custom = freezed,Object? description = freezed,Object? titleField = freezed,Object? searchFields = freezed,Object? sortField = freezed,Object? sortOrder = freezed,Object? fields = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,isSubmittable: freezed == isSubmittable ? _self.isSubmittable : isSubmittable // ignore: cast_nullable_to_non_nullable
as int?,istable: freezed == istable ? _self.istable : istable // ignore: cast_nullable_to_non_nullable
as int?,isSingle: freezed == isSingle ? _self.isSingle : isSingle // ignore: cast_nullable_to_non_nullable
as int?,custom: freezed == custom ? _self.custom : custom // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,titleField: freezed == titleField ? _self.titleField : titleField // ignore: cast_nullable_to_non_nullable
as String?,searchFields: freezed == searchFields ? _self.searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as String?,sortField: freezed == sortField ? _self.sortField : sortField // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<DocField>,
  ));
}

}


/// Adds pattern-matching-related methods to [DocType].
extension DocTypePatterns on DocType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocType() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocType value)  $default,){
final _that = this;
switch (_that) {
case _DocType():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocType value)?  $default,){
final _that = this;
switch (_that) {
case _DocType() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String module,  int? isSubmittable,  int? istable,  int? isSingle,  int? custom,  String? description,  String? titleField,  String? searchFields,  String? sortField,  String? sortOrder,  List<DocField> fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocType() when $default != null:
return $default(_that.name,_that.module,_that.isSubmittable,_that.istable,_that.isSingle,_that.custom,_that.description,_that.titleField,_that.searchFields,_that.sortField,_that.sortOrder,_that.fields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String module,  int? isSubmittable,  int? istable,  int? isSingle,  int? custom,  String? description,  String? titleField,  String? searchFields,  String? sortField,  String? sortOrder,  List<DocField> fields)  $default,) {final _that = this;
switch (_that) {
case _DocType():
return $default(_that.name,_that.module,_that.isSubmittable,_that.istable,_that.isSingle,_that.custom,_that.description,_that.titleField,_that.searchFields,_that.sortField,_that.sortOrder,_that.fields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String module,  int? isSubmittable,  int? istable,  int? isSingle,  int? custom,  String? description,  String? titleField,  String? searchFields,  String? sortField,  String? sortOrder,  List<DocField> fields)?  $default,) {final _that = this;
switch (_that) {
case _DocType() when $default != null:
return $default(_that.name,_that.module,_that.isSubmittable,_that.istable,_that.isSingle,_that.custom,_that.description,_that.titleField,_that.searchFields,_that.sortField,_that.sortOrder,_that.fields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocType implements DocType {
  const _DocType({required this.name, required this.module, this.isSubmittable, this.istable, this.isSingle, this.custom, this.description, this.titleField, this.searchFields, this.sortField, this.sortOrder, final  List<DocField> fields = const []}): _fields = fields;
  factory _DocType.fromJson(Map<String, dynamic> json) => _$DocTypeFromJson(json);

@override final  String name;
@override final  String module;
@override final  int? isSubmittable;
@override final  int? istable;
@override final  int? isSingle;
@override final  int? custom;
@override final  String? description;
@override final  String? titleField;
@override final  String? searchFields;
@override final  String? sortField;
@override final  String? sortOrder;
 final  List<DocField> _fields;
@override@JsonKey() List<DocField> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}


/// Create a copy of DocType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocTypeCopyWith<_DocType> get copyWith => __$DocTypeCopyWithImpl<_DocType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocType&&(identical(other.name, name) || other.name == name)&&(identical(other.module, module) || other.module == module)&&(identical(other.isSubmittable, isSubmittable) || other.isSubmittable == isSubmittable)&&(identical(other.istable, istable) || other.istable == istable)&&(identical(other.isSingle, isSingle) || other.isSingle == isSingle)&&(identical(other.custom, custom) || other.custom == custom)&&(identical(other.description, description) || other.description == description)&&(identical(other.titleField, titleField) || other.titleField == titleField)&&(identical(other.searchFields, searchFields) || other.searchFields == searchFields)&&(identical(other.sortField, sortField) || other.sortField == sortField)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,module,isSubmittable,istable,isSingle,custom,description,titleField,searchFields,sortField,sortOrder,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'DocType(name: $name, module: $module, isSubmittable: $isSubmittable, istable: $istable, isSingle: $isSingle, custom: $custom, description: $description, titleField: $titleField, searchFields: $searchFields, sortField: $sortField, sortOrder: $sortOrder, fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$DocTypeCopyWith<$Res> implements $DocTypeCopyWith<$Res> {
  factory _$DocTypeCopyWith(_DocType value, $Res Function(_DocType) _then) = __$DocTypeCopyWithImpl;
@override @useResult
$Res call({
 String name, String module, int? isSubmittable, int? istable, int? isSingle, int? custom, String? description, String? titleField, String? searchFields, String? sortField, String? sortOrder, List<DocField> fields
});




}
/// @nodoc
class __$DocTypeCopyWithImpl<$Res>
    implements _$DocTypeCopyWith<$Res> {
  __$DocTypeCopyWithImpl(this._self, this._then);

  final _DocType _self;
  final $Res Function(_DocType) _then;

/// Create a copy of DocType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? module = null,Object? isSubmittable = freezed,Object? istable = freezed,Object? isSingle = freezed,Object? custom = freezed,Object? description = freezed,Object? titleField = freezed,Object? searchFields = freezed,Object? sortField = freezed,Object? sortOrder = freezed,Object? fields = null,}) {
  return _then(_DocType(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,isSubmittable: freezed == isSubmittable ? _self.isSubmittable : isSubmittable // ignore: cast_nullable_to_non_nullable
as int?,istable: freezed == istable ? _self.istable : istable // ignore: cast_nullable_to_non_nullable
as int?,isSingle: freezed == isSingle ? _self.isSingle : isSingle // ignore: cast_nullable_to_non_nullable
as int?,custom: freezed == custom ? _self.custom : custom // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,titleField: freezed == titleField ? _self.titleField : titleField // ignore: cast_nullable_to_non_nullable
as String?,searchFields: freezed == searchFields ? _self.searchFields : searchFields // ignore: cast_nullable_to_non_nullable
as String?,sortField: freezed == sortField ? _self.sortField : sortField // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<DocField>,
  ));
}


}

// dart format on
