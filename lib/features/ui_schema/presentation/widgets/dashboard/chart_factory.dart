import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/report_models.dart';

class ChartFactory {
  static Widget buildChart(DashboardChart config) {
    switch (config.type) {
      case ChartType.line:
        return _buildLineChart(config);
      case ChartType.bar:
        return _buildBarChart(config);
      default:
        return const Center(child: Text('Chart type not supported yet'));
    }
  }

  static Widget _buildLineChart(DashboardChart config) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(16),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: config.data.asMap().entries.map((e) {
                return FlSpot(e.key.toDouble(), e.value.y);
              }).toList(),
              isCurved: true,
              color: _parseColor(config.color),
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: _parseColor(config.color).withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildBarChart(DashboardChart config) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(show: false),
          barGroups: config.data.asMap().entries.map((e) {
            return BarChartGroupData(
              x: e.key,
              barRods: [
                BarChartRodData(
                  toY: e.value.y,
                  color: _parseColor(config.color),
                  width: 16,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  static Color _parseColor(String colorStr) {
    // Basic color parser for common names or hex
    if (colorStr.startsWith('#')) {
      return Color(int.parse(colorStr.replaceFirst('#', '0xff')));
    }
    switch (colorStr.toLowerCase()) {
      case 'blue': return Colors.blue;
      case 'green': return Colors.green;
      case 'red': return Colors.red;
      case 'orange': return Colors.orange;
      default: return Colors.blue;
    }
  }
}
