// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardChart _$DashboardChartFromJson(Map<String, dynamic> json) =>
    _DashboardChart(
      name: json['name'] as String,
      label: json['label'] as String,
      type: $enumDecode(_$ChartTypeEnumMap, json['type']),
      color: json['color'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ChartDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardChartToJson(_DashboardChart instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'type': _$ChartTypeEnumMap[instance.type]!,
      'color': instance.color,
      'data': instance.data,
    };

const _$ChartTypeEnumMap = {
  ChartType.line: 'line',
  ChartType.bar: 'bar',
  ChartType.pie: 'pie',
  ChartType.donut: 'donut',
};

_ChartDataPoint _$ChartDataPointFromJson(Map<String, dynamic> json) =>
    _ChartDataPoint(x: json['x'] as String, y: (json['y'] as num).toDouble());

Map<String, dynamic> _$ChartDataPointToJson(_ChartDataPoint instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_NumberCard _$NumberCardFromJson(Map<String, dynamic> json) => _NumberCard(
  name: json['name'] as String,
  label: json['label'] as String,
  value: json['value'] as String,
  indicator: json['indicator'] as String?,
  indicatorValue: json['indicatorValue'] as String?,
);

Map<String, dynamic> _$NumberCardToJson(_NumberCard instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'value': instance.value,
      'indicator': instance.indicator,
      'indicatorValue': instance.indicatorValue,
    };
