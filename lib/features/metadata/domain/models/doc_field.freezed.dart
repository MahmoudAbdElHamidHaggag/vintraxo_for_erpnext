// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocField {

 String get fieldname; String get fieldtype; String? get label; int? get reqd; int? get hidden; int? get readOnly; String? get options; String? get defaultValue; String? get description; int? get inListView; int? get inStandardFilter; int? get bold; int? get allowOnSubmit; String? get dependsOn; String? get mandatoryDependsOn; String? get readOnlyDependsOn;
/// Create a copy of DocField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocFieldCopyWith<DocField> get copyWith => _$DocFieldCopyWithImpl<DocField>(this as DocField, _$identity);

  /// Serializes this DocField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocField&&(identical(other.fieldname, fieldname) || other.fieldname == fieldname)&&(identical(other.fieldtype, fieldtype) || other.fieldtype == fieldtype)&&(identical(other.label, label) || other.label == label)&&(identical(other.reqd, reqd) || other.reqd == reqd)&&(identical(other.hidden, hidden) || other.hidden == hidden)&&(identical(other.readOnly, readOnly) || other.readOnly == readOnly)&&(identical(other.options, options) || other.options == options)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.inListView, inListView) || other.inListView == inListView)&&(identical(other.inStandardFilter, inStandardFilter) || other.inStandardFilter == inStandardFilter)&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.allowOnSubmit, allowOnSubmit) || other.allowOnSubmit == allowOnSubmit)&&(identical(other.dependsOn, dependsOn) || other.dependsOn == dependsOn)&&(identical(other.mandatoryDependsOn, mandatoryDependsOn) || other.mandatoryDependsOn == mandatoryDependsOn)&&(identical(other.readOnlyDependsOn, readOnlyDependsOn) || other.readOnlyDependsOn == readOnlyDependsOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldname,fieldtype,label,reqd,hidden,readOnly,options,defaultValue,description,inListView,inStandardFilter,bold,allowOnSubmit,dependsOn,mandatoryDependsOn,readOnlyDependsOn);

@override
String toString() {
  return 'DocField(fieldname: $fieldname, fieldtype: $fieldtype, label: $label, reqd: $reqd, hidden: $hidden, readOnly: $readOnly, options: $options, defaultValue: $defaultValue, description: $description, inListView: $inListView, inStandardFilter: $inStandardFilter, bold: $bold, allowOnSubmit: $allowOnSubmit, dependsOn: $dependsOn, mandatoryDependsOn: $mandatoryDependsOn, readOnlyDependsOn: $readOnlyDependsOn)';
}


}

/// @nodoc
abstract mixin class $DocFieldCopyWith<$Res>  {
  factory $DocFieldCopyWith(DocField value, $Res Function(DocField) _then) = _$DocFieldCopyWithImpl;
@useResult
$Res call({
 String fieldname, String fieldtype, String? label, int? reqd, int? hidden, int? readOnly, String? options, String? defaultValue, String? description, int? inListView, int? inStandardFilter, int? bold, int? allowOnSubmit, String? dependsOn, String? mandatoryDependsOn, String? readOnlyDependsOn
});




}
/// @nodoc
class _$DocFieldCopyWithImpl<$Res>
    implements $DocFieldCopyWith<$Res> {
  _$DocFieldCopyWithImpl(this._self, this._then);

  final DocField _self;
  final $Res Function(DocField) _then;

/// Create a copy of DocField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldname = null,Object? fieldtype = null,Object? label = freezed,Object? reqd = freezed,Object? hidden = freezed,Object? readOnly = freezed,Object? options = freezed,Object? defaultValue = freezed,Object? description = freezed,Object? inListView = freezed,Object? inStandardFilter = freezed,Object? bold = freezed,Object? allowOnSubmit = freezed,Object? dependsOn = freezed,Object? mandatoryDependsOn = freezed,Object? readOnlyDependsOn = freezed,}) {
  return _then(_self.copyWith(
fieldname: null == fieldname ? _self.fieldname : fieldname // ignore: cast_nullable_to_non_nullable
as String,fieldtype: null == fieldtype ? _self.fieldtype : fieldtype // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,reqd: freezed == reqd ? _self.reqd : reqd // ignore: cast_nullable_to_non_nullable
as int?,hidden: freezed == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as int?,readOnly: freezed == readOnly ? _self.readOnly : readOnly // ignore: cast_nullable_to_non_nullable
as int?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,inListView: freezed == inListView ? _self.inListView : inListView // ignore: cast_nullable_to_non_nullable
as int?,inStandardFilter: freezed == inStandardFilter ? _self.inStandardFilter : inStandardFilter // ignore: cast_nullable_to_non_nullable
as int?,bold: freezed == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as int?,allowOnSubmit: freezed == allowOnSubmit ? _self.allowOnSubmit : allowOnSubmit // ignore: cast_nullable_to_non_nullable
as int?,dependsOn: freezed == dependsOn ? _self.dependsOn : dependsOn // ignore: cast_nullable_to_non_nullable
as String?,mandatoryDependsOn: freezed == mandatoryDependsOn ? _self.mandatoryDependsOn : mandatoryDependsOn // ignore: cast_nullable_to_non_nullable
as String?,readOnlyDependsOn: freezed == readOnlyDependsOn ? _self.readOnlyDependsOn : readOnlyDependsOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocField].
extension DocFieldPatterns on DocField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocField value)  $default,){
final _that = this;
switch (_that) {
case _DocField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocField value)?  $default,){
final _that = this;
switch (_that) {
case _DocField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fieldname,  String fieldtype,  String? label,  int? reqd,  int? hidden,  int? readOnly,  String? options,  String? defaultValue,  String? description,  int? inListView,  int? inStandardFilter,  int? bold,  int? allowOnSubmit,  String? dependsOn,  String? mandatoryDependsOn,  String? readOnlyDependsOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocField() when $default != null:
return $default(_that.fieldname,_that.fieldtype,_that.label,_that.reqd,_that.hidden,_that.readOnly,_that.options,_that.defaultValue,_that.description,_that.inListView,_that.inStandardFilter,_that.bold,_that.allowOnSubmit,_that.dependsOn,_that.mandatoryDependsOn,_that.readOnlyDependsOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fieldname,  String fieldtype,  String? label,  int? reqd,  int? hidden,  int? readOnly,  String? options,  String? defaultValue,  String? description,  int? inListView,  int? inStandardFilter,  int? bold,  int? allowOnSubmit,  String? dependsOn,  String? mandatoryDependsOn,  String? readOnlyDependsOn)  $default,) {final _that = this;
switch (_that) {
case _DocField():
return $default(_that.fieldname,_that.fieldtype,_that.label,_that.reqd,_that.hidden,_that.readOnly,_that.options,_that.defaultValue,_that.description,_that.inListView,_that.inStandardFilter,_that.bold,_that.allowOnSubmit,_that.dependsOn,_that.mandatoryDependsOn,_that.readOnlyDependsOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fieldname,  String fieldtype,  String? label,  int? reqd,  int? hidden,  int? readOnly,  String? options,  String? defaultValue,  String? description,  int? inListView,  int? inStandardFilter,  int? bold,  int? allowOnSubmit,  String? dependsOn,  String? mandatoryDependsOn,  String? readOnlyDependsOn)?  $default,) {final _that = this;
switch (_that) {
case _DocField() when $default != null:
return $default(_that.fieldname,_that.fieldtype,_that.label,_that.reqd,_that.hidden,_that.readOnly,_that.options,_that.defaultValue,_that.description,_that.inListView,_that.inStandardFilter,_that.bold,_that.allowOnSubmit,_that.dependsOn,_that.mandatoryDependsOn,_that.readOnlyDependsOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocField implements DocField {
  const _DocField({required this.fieldname, required this.fieldtype, this.label, this.reqd, this.hidden, this.readOnly, this.options, this.defaultValue, this.description, this.inListView, this.inStandardFilter, this.bold, this.allowOnSubmit, this.dependsOn, this.mandatoryDependsOn, this.readOnlyDependsOn});
  factory _DocField.fromJson(Map<String, dynamic> json) => _$DocFieldFromJson(json);

@override final  String fieldname;
@override final  String fieldtype;
@override final  String? label;
@override final  int? reqd;
@override final  int? hidden;
@override final  int? readOnly;
@override final  String? options;
@override final  String? defaultValue;
@override final  String? description;
@override final  int? inListView;
@override final  int? inStandardFilter;
@override final  int? bold;
@override final  int? allowOnSubmit;
@override final  String? dependsOn;
@override final  String? mandatoryDependsOn;
@override final  String? readOnlyDependsOn;

/// Create a copy of DocField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocFieldCopyWith<_DocField> get copyWith => __$DocFieldCopyWithImpl<_DocField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocField&&(identical(other.fieldname, fieldname) || other.fieldname == fieldname)&&(identical(other.fieldtype, fieldtype) || other.fieldtype == fieldtype)&&(identical(other.label, label) || other.label == label)&&(identical(other.reqd, reqd) || other.reqd == reqd)&&(identical(other.hidden, hidden) || other.hidden == hidden)&&(identical(other.readOnly, readOnly) || other.readOnly == readOnly)&&(identical(other.options, options) || other.options == options)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.inListView, inListView) || other.inListView == inListView)&&(identical(other.inStandardFilter, inStandardFilter) || other.inStandardFilter == inStandardFilter)&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.allowOnSubmit, allowOnSubmit) || other.allowOnSubmit == allowOnSubmit)&&(identical(other.dependsOn, dependsOn) || other.dependsOn == dependsOn)&&(identical(other.mandatoryDependsOn, mandatoryDependsOn) || other.mandatoryDependsOn == mandatoryDependsOn)&&(identical(other.readOnlyDependsOn, readOnlyDependsOn) || other.readOnlyDependsOn == readOnlyDependsOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldname,fieldtype,label,reqd,hidden,readOnly,options,defaultValue,description,inListView,inStandardFilter,bold,allowOnSubmit,dependsOn,mandatoryDependsOn,readOnlyDependsOn);

@override
String toString() {
  return 'DocField(fieldname: $fieldname, fieldtype: $fieldtype, label: $label, reqd: $reqd, hidden: $hidden, readOnly: $readOnly, options: $options, defaultValue: $defaultValue, description: $description, inListView: $inListView, inStandardFilter: $inStandardFilter, bold: $bold, allowOnSubmit: $allowOnSubmit, dependsOn: $dependsOn, mandatoryDependsOn: $mandatoryDependsOn, readOnlyDependsOn: $readOnlyDependsOn)';
}


}

/// @nodoc
abstract mixin class _$DocFieldCopyWith<$Res> implements $DocFieldCopyWith<$Res> {
  factory _$DocFieldCopyWith(_DocField value, $Res Function(_DocField) _then) = __$DocFieldCopyWithImpl;
@override @useResult
$Res call({
 String fieldname, String fieldtype, String? label, int? reqd, int? hidden, int? readOnly, String? options, String? defaultValue, String? description, int? inListView, int? inStandardFilter, int? bold, int? allowOnSubmit, String? dependsOn, String? mandatoryDependsOn, String? readOnlyDependsOn
});




}
/// @nodoc
class __$DocFieldCopyWithImpl<$Res>
    implements _$DocFieldCopyWith<$Res> {
  __$DocFieldCopyWithImpl(this._self, this._then);

  final _DocField _self;
  final $Res Function(_DocField) _then;

/// Create a copy of DocField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldname = null,Object? fieldtype = null,Object? label = freezed,Object? reqd = freezed,Object? hidden = freezed,Object? readOnly = freezed,Object? options = freezed,Object? defaultValue = freezed,Object? description = freezed,Object? inListView = freezed,Object? inStandardFilter = freezed,Object? bold = freezed,Object? allowOnSubmit = freezed,Object? dependsOn = freezed,Object? mandatoryDependsOn = freezed,Object? readOnlyDependsOn = freezed,}) {
  return _then(_DocField(
fieldname: null == fieldname ? _self.fieldname : fieldname // ignore: cast_nullable_to_non_nullable
as String,fieldtype: null == fieldtype ? _self.fieldtype : fieldtype // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,reqd: freezed == reqd ? _self.reqd : reqd // ignore: cast_nullable_to_non_nullable
as int?,hidden: freezed == hidden ? _self.hidden : hidden // ignore: cast_nullable_to_non_nullable
as int?,readOnly: freezed == readOnly ? _self.readOnly : readOnly // ignore: cast_nullable_to_non_nullable
as int?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,inListView: freezed == inListView ? _self.inListView : inListView // ignore: cast_nullable_to_non_nullable
as int?,inStandardFilter: freezed == inStandardFilter ? _self.inStandardFilter : inStandardFilter // ignore: cast_nullable_to_non_nullable
as int?,bold: freezed == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as int?,allowOnSubmit: freezed == allowOnSubmit ? _self.allowOnSubmit : allowOnSubmit // ignore: cast_nullable_to_non_nullable
as int?,dependsOn: freezed == dependsOn ? _self.dependsOn : dependsOn // ignore: cast_nullable_to_non_nullable
as String?,mandatoryDependsOn: freezed == mandatoryDependsOn ? _self.mandatoryDependsOn : mandatoryDependsOn // ignore: cast_nullable_to_non_nullable
as String?,readOnlyDependsOn: freezed == readOnlyDependsOn ? _self.readOnlyDependsOn : readOnlyDependsOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
