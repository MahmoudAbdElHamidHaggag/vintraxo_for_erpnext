// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardChart {

 String get name; String get label; ChartType get type; String get color; List<ChartDataPoint> get data;
/// Create a copy of DashboardChart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardChartCopyWith<DashboardChart> get copyWith => _$DashboardChartCopyWithImpl<DashboardChart>(this as DashboardChart, _$identity);

  /// Serializes this DashboardChart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardChart&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,type,color,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DashboardChart(name: $name, label: $label, type: $type, color: $color, data: $data)';
}


}

/// @nodoc
abstract mixin class $DashboardChartCopyWith<$Res>  {
  factory $DashboardChartCopyWith(DashboardChart value, $Res Function(DashboardChart) _then) = _$DashboardChartCopyWithImpl;
@useResult
$Res call({
 String name, String label, ChartType type, String color, List<ChartDataPoint> data
});




}
/// @nodoc
class _$DashboardChartCopyWithImpl<$Res>
    implements $DashboardChartCopyWith<$Res> {
  _$DashboardChartCopyWithImpl(this._self, this._then);

  final DashboardChart _self;
  final $Res Function(DashboardChart) _then;

/// Create a copy of DashboardChart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? label = null,Object? type = null,Object? color = null,Object? data = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChartDataPoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardChart].
extension DashboardChartPatterns on DashboardChart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardChart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardChart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardChart value)  $default,){
final _that = this;
switch (_that) {
case _DashboardChart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardChart value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardChart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String label,  ChartType type,  String color,  List<ChartDataPoint> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardChart() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.color,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String label,  ChartType type,  String color,  List<ChartDataPoint> data)  $default,) {final _that = this;
switch (_that) {
case _DashboardChart():
return $default(_that.name,_that.label,_that.type,_that.color,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String label,  ChartType type,  String color,  List<ChartDataPoint> data)?  $default,) {final _that = this;
switch (_that) {
case _DashboardChart() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.color,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardChart implements DashboardChart {
  const _DashboardChart({required this.name, required this.label, required this.type, required this.color, required final  List<ChartDataPoint> data}): _data = data;
  factory _DashboardChart.fromJson(Map<String, dynamic> json) => _$DashboardChartFromJson(json);

@override final  String name;
@override final  String label;
@override final  ChartType type;
@override final  String color;
 final  List<ChartDataPoint> _data;
@override List<ChartDataPoint> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DashboardChart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardChartCopyWith<_DashboardChart> get copyWith => __$DashboardChartCopyWithImpl<_DashboardChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardChart&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,type,color,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DashboardChart(name: $name, label: $label, type: $type, color: $color, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DashboardChartCopyWith<$Res> implements $DashboardChartCopyWith<$Res> {
  factory _$DashboardChartCopyWith(_DashboardChart value, $Res Function(_DashboardChart) _then) = __$DashboardChartCopyWithImpl;
@override @useResult
$Res call({
 String name, String label, ChartType type, String color, List<ChartDataPoint> data
});




}
/// @nodoc
class __$DashboardChartCopyWithImpl<$Res>
    implements _$DashboardChartCopyWith<$Res> {
  __$DashboardChartCopyWithImpl(this._self, this._then);

  final _DashboardChart _self;
  final $Res Function(_DashboardChart) _then;

/// Create a copy of DashboardChart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? label = null,Object? type = null,Object? color = null,Object? data = null,}) {
  return _then(_DashboardChart(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChartDataPoint>,
  ));
}


}


/// @nodoc
mixin _$ChartDataPoint {

 String get x; double get y;
/// Create a copy of ChartDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataPointCopyWith<ChartDataPoint> get copyWith => _$ChartDataPointCopyWithImpl<ChartDataPoint>(this as ChartDataPoint, _$identity);

  /// Serializes this ChartDataPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartDataPoint&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'ChartDataPoint(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $ChartDataPointCopyWith<$Res>  {
  factory $ChartDataPointCopyWith(ChartDataPoint value, $Res Function(ChartDataPoint) _then) = _$ChartDataPointCopyWithImpl;
@useResult
$Res call({
 String x, double y
});




}
/// @nodoc
class _$ChartDataPointCopyWithImpl<$Res>
    implements $ChartDataPointCopyWith<$Res> {
  _$ChartDataPointCopyWithImpl(this._self, this._then);

  final ChartDataPoint _self;
  final $Res Function(ChartDataPoint) _then;

/// Create a copy of ChartDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartDataPoint].
extension ChartDataPointPatterns on ChartDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _ChartDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _ChartDataPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartDataPoint() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String x,  double y)  $default,) {final _that = this;
switch (_that) {
case _ChartDataPoint():
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _ChartDataPoint() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartDataPoint implements ChartDataPoint {
  const _ChartDataPoint({required this.x, required this.y});
  factory _ChartDataPoint.fromJson(Map<String, dynamic> json) => _$ChartDataPointFromJson(json);

@override final  String x;
@override final  double y;

/// Create a copy of ChartDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataPointCopyWith<_ChartDataPoint> get copyWith => __$ChartDataPointCopyWithImpl<_ChartDataPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartDataPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartDataPoint&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'ChartDataPoint(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$ChartDataPointCopyWith<$Res> implements $ChartDataPointCopyWith<$Res> {
  factory _$ChartDataPointCopyWith(_ChartDataPoint value, $Res Function(_ChartDataPoint) _then) = __$ChartDataPointCopyWithImpl;
@override @useResult
$Res call({
 String x, double y
});




}
/// @nodoc
class __$ChartDataPointCopyWithImpl<$Res>
    implements _$ChartDataPointCopyWith<$Res> {
  __$ChartDataPointCopyWithImpl(this._self, this._then);

  final _ChartDataPoint _self;
  final $Res Function(_ChartDataPoint) _then;

/// Create a copy of ChartDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_ChartDataPoint(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$NumberCard {

 String get name; String get label; String get value; String? get indicator;// 'positive', 'negative', 'neutral'
 String? get indicatorValue;
/// Create a copy of NumberCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberCardCopyWith<NumberCard> get copyWith => _$NumberCardCopyWithImpl<NumberCard>(this as NumberCard, _$identity);

  /// Serializes this NumberCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberCard&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.indicator, indicator) || other.indicator == indicator)&&(identical(other.indicatorValue, indicatorValue) || other.indicatorValue == indicatorValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,value,indicator,indicatorValue);

@override
String toString() {
  return 'NumberCard(name: $name, label: $label, value: $value, indicator: $indicator, indicatorValue: $indicatorValue)';
}


}

/// @nodoc
abstract mixin class $NumberCardCopyWith<$Res>  {
  factory $NumberCardCopyWith(NumberCard value, $Res Function(NumberCard) _then) = _$NumberCardCopyWithImpl;
@useResult
$Res call({
 String name, String label, String value, String? indicator, String? indicatorValue
});




}
/// @nodoc
class _$NumberCardCopyWithImpl<$Res>
    implements $NumberCardCopyWith<$Res> {
  _$NumberCardCopyWithImpl(this._self, this._then);

  final NumberCard _self;
  final $Res Function(NumberCard) _then;

/// Create a copy of NumberCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? label = null,Object? value = null,Object? indicator = freezed,Object? indicatorValue = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,indicator: freezed == indicator ? _self.indicator : indicator // ignore: cast_nullable_to_non_nullable
as String?,indicatorValue: freezed == indicatorValue ? _self.indicatorValue : indicatorValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NumberCard].
extension NumberCardPatterns on NumberCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NumberCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NumberCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NumberCard value)  $default,){
final _that = this;
switch (_that) {
case _NumberCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NumberCard value)?  $default,){
final _that = this;
switch (_that) {
case _NumberCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String label,  String value,  String? indicator,  String? indicatorValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NumberCard() when $default != null:
return $default(_that.name,_that.label,_that.value,_that.indicator,_that.indicatorValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String label,  String value,  String? indicator,  String? indicatorValue)  $default,) {final _that = this;
switch (_that) {
case _NumberCard():
return $default(_that.name,_that.label,_that.value,_that.indicator,_that.indicatorValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String label,  String value,  String? indicator,  String? indicatorValue)?  $default,) {final _that = this;
switch (_that) {
case _NumberCard() when $default != null:
return $default(_that.name,_that.label,_that.value,_that.indicator,_that.indicatorValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NumberCard implements NumberCard {
  const _NumberCard({required this.name, required this.label, required this.value, this.indicator, this.indicatorValue});
  factory _NumberCard.fromJson(Map<String, dynamic> json) => _$NumberCardFromJson(json);

@override final  String name;
@override final  String label;
@override final  String value;
@override final  String? indicator;
// 'positive', 'negative', 'neutral'
@override final  String? indicatorValue;

/// Create a copy of NumberCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberCardCopyWith<_NumberCard> get copyWith => __$NumberCardCopyWithImpl<_NumberCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumberCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberCard&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.indicator, indicator) || other.indicator == indicator)&&(identical(other.indicatorValue, indicatorValue) || other.indicatorValue == indicatorValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,value,indicator,indicatorValue);

@override
String toString() {
  return 'NumberCard(name: $name, label: $label, value: $value, indicator: $indicator, indicatorValue: $indicatorValue)';
}


}

/// @nodoc
abstract mixin class _$NumberCardCopyWith<$Res> implements $NumberCardCopyWith<$Res> {
  factory _$NumberCardCopyWith(_NumberCard value, $Res Function(_NumberCard) _then) = __$NumberCardCopyWithImpl;
@override @useResult
$Res call({
 String name, String label, String value, String? indicator, String? indicatorValue
});




}
/// @nodoc
class __$NumberCardCopyWithImpl<$Res>
    implements _$NumberCardCopyWith<$Res> {
  __$NumberCardCopyWithImpl(this._self, this._then);

  final _NumberCard _self;
  final $Res Function(_NumberCard) _then;

/// Create a copy of NumberCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? label = null,Object? value = null,Object? indicator = freezed,Object? indicatorValue = freezed,}) {
  return _then(_NumberCard(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,indicator: freezed == indicator ? _self.indicator : indicator // ignore: cast_nullable_to_non_nullable
as String?,indicatorValue: freezed == indicatorValue ? _self.indicatorValue : indicatorValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
