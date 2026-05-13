import 'package:flutter/material.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/report_models.dart';

class NumberCardWidget extends StatelessWidget {
  final NumberCard card;

  const NumberCardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final color = _getIndicatorColor();

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              card.label,
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            const SizedBox(height: 12),
            Text(
              card.value,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            if (card.indicatorValue != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    card.indicator == 'positive' ? Icons.trending_up : Icons.trending_down,
                    size: 16,
                    color: color,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    card.indicatorValue!,
                    style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getIndicatorColor() {
    switch (card.indicator) {
      case 'positive': return Colors.green;
      case 'negative': return Colors.red;
      default: return Colors.grey;
    }
  }
}
