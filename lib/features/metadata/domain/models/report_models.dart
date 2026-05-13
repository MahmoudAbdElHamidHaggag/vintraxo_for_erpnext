import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_models.freezed.dart';
part 'report_models.g.dart';

enum ChartType {
  line,
  bar,
  pie,
  donut
}

@freezed
abstract class DashboardChart with _$DashboardChart {
  const factory DashboardChart({
    required String name,
    required String label,
    required ChartType type,
    required String color,
    required List<ChartDataPoint> data,
  }) = _DashboardChart;

  factory DashboardChart.fromJson(Map<String, dynamic> json) => _$DashboardChartFromJson(json);
}

@freezed
abstract class ChartDataPoint with _$ChartDataPoint {
  const factory ChartDataPoint({
    required String x,
    required double y,
  }) = _ChartDataPoint;

  factory ChartDataPoint.fromJson(Map<String, dynamic> json) => _$ChartDataPointFromJson(json);
}

@freezed
abstract class NumberCard with _$NumberCard {
  const factory NumberCard({
    required String name,
    required String label,
    required String value,
    String? indicator, // 'positive', 'negative', 'neutral'
    String? indicatorValue,
  }) = _NumberCard;

  factory NumberCard.fromJson(Map<String, dynamic> json) => _$NumberCardFromJson(json);
}
