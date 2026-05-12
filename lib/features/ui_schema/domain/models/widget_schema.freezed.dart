// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetSchema {

 String get id; WidgetType get type; String get label; bool get isRequired; bool get isReadOnly; bool get isHidden; String? get options;// For Link targets or Select options
 String? get defaultValue; String? get description; String? get dependsOn;
/// Create a copy of WidgetSchema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetSchemaCopyWith<WidgetSchema> get copyWith => _$WidgetSchemaCopyWithImpl<WidgetSchema>(this as WidgetSchema, _$identity);

  /// Serializes this WidgetSchema to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetSchema&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isReadOnly, isReadOnly) || other.isReadOnly == isReadOnly)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.options, options) || other.options == options)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.dependsOn, dependsOn) || other.dependsOn == dependsOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,label,isRequired,isReadOnly,isHidden,options,defaultValue,description,dependsOn);

@override
String toString() {
  return 'WidgetSchema(id: $id, type: $type, label: $label, isRequired: $isRequired, isReadOnly: $isReadOnly, isHidden: $isHidden, options: $options, defaultValue: $defaultValue, description: $description, dependsOn: $dependsOn)';
}


}

/// @nodoc
abstract mixin class $WidgetSchemaCopyWith<$Res>  {
  factory $WidgetSchemaCopyWith(WidgetSchema value, $Res Function(WidgetSchema) _then) = _$WidgetSchemaCopyWithImpl;
@useResult
$Res call({
 String id, WidgetType type, String label, bool isRequired, bool isReadOnly, bool isHidden, String? options, String? defaultValue, String? description, String? dependsOn
});




}
/// @nodoc
class _$WidgetSchemaCopyWithImpl<$Res>
    implements $WidgetSchemaCopyWith<$Res> {
  _$WidgetSchemaCopyWithImpl(this._self, this._then);

  final WidgetSchema _self;
  final $Res Function(WidgetSchema) _then;

/// Create a copy of WidgetSchema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? label = null,Object? isRequired = null,Object? isReadOnly = null,Object? isHidden = null,Object? options = freezed,Object? defaultValue = freezed,Object? description = freezed,Object? dependsOn = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isReadOnly: null == isReadOnly ? _self.isReadOnly : isReadOnly // ignore: cast_nullable_to_non_nullable
as bool,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dependsOn: freezed == dependsOn ? _self.dependsOn : dependsOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetSchema].
extension WidgetSchemaPatterns on WidgetSchema {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetSchema value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetSchema() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetSchema value)  $default,){
final _that = this;
switch (_that) {
case _WidgetSchema():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetSchema value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetSchema() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  WidgetType type,  String label,  bool isRequired,  bool isReadOnly,  bool isHidden,  String? options,  String? defaultValue,  String? description,  String? dependsOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetSchema() when $default != null:
return $default(_that.id,_that.type,_that.label,_that.isRequired,_that.isReadOnly,_that.isHidden,_that.options,_that.defaultValue,_that.description,_that.dependsOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  WidgetType type,  String label,  bool isRequired,  bool isReadOnly,  bool isHidden,  String? options,  String? defaultValue,  String? description,  String? dependsOn)  $default,) {final _that = this;
switch (_that) {
case _WidgetSchema():
return $default(_that.id,_that.type,_that.label,_that.isRequired,_that.isReadOnly,_that.isHidden,_that.options,_that.defaultValue,_that.description,_that.dependsOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  WidgetType type,  String label,  bool isRequired,  bool isReadOnly,  bool isHidden,  String? options,  String? defaultValue,  String? description,  String? dependsOn)?  $default,) {final _that = this;
switch (_that) {
case _WidgetSchema() when $default != null:
return $default(_that.id,_that.type,_that.label,_that.isRequired,_that.isReadOnly,_that.isHidden,_that.options,_that.defaultValue,_that.description,_that.dependsOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WidgetSchema implements WidgetSchema {
  const _WidgetSchema({required this.id, required this.type, required this.label, this.isRequired = false, this.isReadOnly = false, this.isHidden = false, this.options, this.defaultValue, this.description, this.dependsOn});
  factory _WidgetSchema.fromJson(Map<String, dynamic> json) => _$WidgetSchemaFromJson(json);

@override final  String id;
@override final  WidgetType type;
@override final  String label;
@override@JsonKey() final  bool isRequired;
@override@JsonKey() final  bool isReadOnly;
@override@JsonKey() final  bool isHidden;
@override final  String? options;
// For Link targets or Select options
@override final  String? defaultValue;
@override final  String? description;
@override final  String? dependsOn;

/// Create a copy of WidgetSchema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetSchemaCopyWith<_WidgetSchema> get copyWith => __$WidgetSchemaCopyWithImpl<_WidgetSchema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetSchemaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetSchema&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isReadOnly, isReadOnly) || other.isReadOnly == isReadOnly)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.options, options) || other.options == options)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.dependsOn, dependsOn) || other.dependsOn == dependsOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,label,isRequired,isReadOnly,isHidden,options,defaultValue,description,dependsOn);

@override
String toString() {
  return 'WidgetSchema(id: $id, type: $type, label: $label, isRequired: $isRequired, isReadOnly: $isReadOnly, isHidden: $isHidden, options: $options, defaultValue: $defaultValue, description: $description, dependsOn: $dependsOn)';
}


}

/// @nodoc
abstract mixin class _$WidgetSchemaCopyWith<$Res> implements $WidgetSchemaCopyWith<$Res> {
  factory _$WidgetSchemaCopyWith(_WidgetSchema value, $Res Function(_WidgetSchema) _then) = __$WidgetSchemaCopyWithImpl;
@override @useResult
$Res call({
 String id, WidgetType type, String label, bool isRequired, bool isReadOnly, bool isHidden, String? options, String? defaultValue, String? description, String? dependsOn
});




}
/// @nodoc
class __$WidgetSchemaCopyWithImpl<$Res>
    implements _$WidgetSchemaCopyWith<$Res> {
  __$WidgetSchemaCopyWithImpl(this._self, this._then);

  final _WidgetSchema _self;
  final $Res Function(_WidgetSchema) _then;

/// Create a copy of WidgetSchema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? label = null,Object? isRequired = null,Object? isReadOnly = null,Object? isHidden = null,Object? options = freezed,Object? defaultValue = freezed,Object? description = freezed,Object? dependsOn = freezed,}) {
  return _then(_WidgetSchema(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WidgetType,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isReadOnly: null == isReadOnly ? _self.isReadOnly : isReadOnly // ignore: cast_nullable_to_non_nullable
as bool,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dependsOn: freezed == dependsOn ? _self.dependsOn : dependsOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
