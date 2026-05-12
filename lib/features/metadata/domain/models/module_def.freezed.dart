// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModuleDef {

@JsonKey(name: 'module_name') String get moduleName; String? get appName; int? get custom; String? get restrictToDomain;
/// Create a copy of ModuleDef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleDefCopyWith<ModuleDef> get copyWith => _$ModuleDefCopyWithImpl<ModuleDef>(this as ModuleDef, _$identity);

  /// Serializes this ModuleDef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleDef&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.custom, custom) || other.custom == custom)&&(identical(other.restrictToDomain, restrictToDomain) || other.restrictToDomain == restrictToDomain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleName,appName,custom,restrictToDomain);

@override
String toString() {
  return 'ModuleDef(moduleName: $moduleName, appName: $appName, custom: $custom, restrictToDomain: $restrictToDomain)';
}


}

/// @nodoc
abstract mixin class $ModuleDefCopyWith<$Res>  {
  factory $ModuleDefCopyWith(ModuleDef value, $Res Function(ModuleDef) _then) = _$ModuleDefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'module_name') String moduleName, String? appName, int? custom, String? restrictToDomain
});




}
/// @nodoc
class _$ModuleDefCopyWithImpl<$Res>
    implements $ModuleDefCopyWith<$Res> {
  _$ModuleDefCopyWithImpl(this._self, this._then);

  final ModuleDef _self;
  final $Res Function(ModuleDef) _then;

/// Create a copy of ModuleDef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleName = null,Object? appName = freezed,Object? custom = freezed,Object? restrictToDomain = freezed,}) {
  return _then(_self.copyWith(
moduleName: null == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,custom: freezed == custom ? _self.custom : custom // ignore: cast_nullable_to_non_nullable
as int?,restrictToDomain: freezed == restrictToDomain ? _self.restrictToDomain : restrictToDomain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleDef].
extension ModuleDefPatterns on ModuleDef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleDef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleDef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleDef value)  $default,){
final _that = this;
switch (_that) {
case _ModuleDef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleDef value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleDef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'module_name')  String moduleName,  String? appName,  int? custom,  String? restrictToDomain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleDef() when $default != null:
return $default(_that.moduleName,_that.appName,_that.custom,_that.restrictToDomain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'module_name')  String moduleName,  String? appName,  int? custom,  String? restrictToDomain)  $default,) {final _that = this;
switch (_that) {
case _ModuleDef():
return $default(_that.moduleName,_that.appName,_that.custom,_that.restrictToDomain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'module_name')  String moduleName,  String? appName,  int? custom,  String? restrictToDomain)?  $default,) {final _that = this;
switch (_that) {
case _ModuleDef() when $default != null:
return $default(_that.moduleName,_that.appName,_that.custom,_that.restrictToDomain);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleDef implements ModuleDef {
  const _ModuleDef({@JsonKey(name: 'module_name') required this.moduleName, this.appName, this.custom, this.restrictToDomain});
  factory _ModuleDef.fromJson(Map<String, dynamic> json) => _$ModuleDefFromJson(json);

@override@JsonKey(name: 'module_name') final  String moduleName;
@override final  String? appName;
@override final  int? custom;
@override final  String? restrictToDomain;

/// Create a copy of ModuleDef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleDefCopyWith<_ModuleDef> get copyWith => __$ModuleDefCopyWithImpl<_ModuleDef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleDefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleDef&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.custom, custom) || other.custom == custom)&&(identical(other.restrictToDomain, restrictToDomain) || other.restrictToDomain == restrictToDomain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleName,appName,custom,restrictToDomain);

@override
String toString() {
  return 'ModuleDef(moduleName: $moduleName, appName: $appName, custom: $custom, restrictToDomain: $restrictToDomain)';
}


}

/// @nodoc
abstract mixin class _$ModuleDefCopyWith<$Res> implements $ModuleDefCopyWith<$Res> {
  factory _$ModuleDefCopyWith(_ModuleDef value, $Res Function(_ModuleDef) _then) = __$ModuleDefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'module_name') String moduleName, String? appName, int? custom, String? restrictToDomain
});




}
/// @nodoc
class __$ModuleDefCopyWithImpl<$Res>
    implements _$ModuleDefCopyWith<$Res> {
  __$ModuleDefCopyWithImpl(this._self, this._then);

  final _ModuleDef _self;
  final $Res Function(_ModuleDef) _then;

/// Create a copy of ModuleDef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleName = null,Object? appName = freezed,Object? custom = freezed,Object? restrictToDomain = freezed,}) {
  return _then(_ModuleDef(
moduleName: null == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,custom: freezed == custom ? _self.custom : custom // ignore: cast_nullable_to_non_nullable
as int?,restrictToDomain: freezed == restrictToDomain ? _self.restrictToDomain : restrictToDomain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
