import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/metadata/domain/models/report_models.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/dashboard/chart_factory.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/dashboard/number_card_widget.dart';

class WorkspaceScreen extends StatelessWidget {
  final String moduleName;

  const WorkspaceScreen({super.key, required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$moduleName Workspace'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDashboard(context),
            const SizedBox(height: 24),
            _buildQuickLinks(context),
            const SizedBox(height: 24),
            _buildMasters(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dashboard',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NumberCardWidget(card: const NumberCard(
                name: 'revenue',
                label: 'Total Revenue',
                value: '\$ 452,000',
                indicator: 'positive',
                indicatorValue: '+ 12%',
              )),
              const SizedBox(width: 12),
              NumberCardWidget(card: const NumberCard(
                name: 'orders',
                label: 'Pending Orders',
                value: '28',
                indicator: 'negative',
                indicatorValue: '- 5%',
              )),
              const SizedBox(width: 12),
              NumberCardWidget(card: const NumberCard(
                name: 'customers',
                label: 'New Customers',
                value: '142',
                indicator: 'positive',
                indicatorValue: '+ 18%',
              )),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Performance Trend', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                ChartFactory.buildChart(const DashboardChart(
                  name: 'performance',
                  label: 'Monthly Growth',
                  type: ChartType.line,
                  color: 'blue',
                  data: [
                    ChartDataPoint(x: 'Jan', y: 10),
                    ChartDataPoint(x: 'Feb', y: 25),
                    ChartDataPoint(x: 'Mar', y: 18),
                    ChartDataPoint(x: 'Apr', y: 40),
                    ChartDataPoint(x: 'May', y: 35),
                  ],
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickLinks(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Links',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _buildShortcutCard(context, 'New Task', Icons.add_task, '/doctype/Task'),
            _buildShortcutCard(context, 'My Projects', Icons.folder_shared, '/list/Project'),
            _buildShortcutCard(context, 'Report', Icons.bar_chart, '#'),
          ],
        ),
      ],
    );
  }

  Widget _buildMasters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Masters',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildDocTypeList(context, [
          'User',
          'Role',
          'Company',
          'Task',
          'Project',
        ]),
      ],
    );
  }

  Widget _buildShortcutCard(BuildContext context, String title, IconData icon, String route) {
    return InkWell(
      onTap: () => route != '#' ? context.push(route) : null,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: Theme.of(context).primaryColor),
            const SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildDocTypeList(BuildContext context, List<String> docTypes) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: docTypes.length,
      itemBuilder: (context, index) {
        final docType = docTypes[index];
        return ListTile(
          leading: const Icon(Icons.description_outlined),
          title: Text(docType),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () => context.push('/list/$docType'),
        );
      },
    );
  }
}
