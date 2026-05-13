import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';

class VintraxoSidebar extends ConsumerWidget {
  final String? selectedModule;
  final Function(String moduleName) onModuleSelected;

  const VintraxoSidebar({
    super.key,
    this.selectedModule,
    required this.onModuleSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modulesAsync = ref.watch(modulesProvider);

    return Drawer(
      child: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: modulesAsync.when(
              data: (modules) => ListView.builder(
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  final module = modules[index];
                  final isSelected = selectedModule == module.moduleName;
                  
                  return ListTile(
                    leading: Icon(
                      _getModuleIcon(module.moduleName),
                      color: isSelected ? Theme.of(context).primaryColor : null,
                    ),
                    title: Text(
                      module.moduleName,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : null,
                        color: isSelected ? Theme.of(context).primaryColor : null,
                      ),
                    ),
                    selected: isSelected,
                    onTap: () => onModuleSelected(module.moduleName),
                  );
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.rocket_launch, size: 48, color: Colors.white),
            SizedBox(height: 8),
            Text(
              'VINTRAXO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      border: Border(top: BorderSide(color: Colors.grey[300]!)),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: const Text('Administrator'),
        subtitle: const Text('Settings'),
        onTap: () {
          // Go to settings
        },
      ),
    );
  }

  IconData _getModuleIcon(String moduleName) {
    switch (moduleName) {
      case 'Accounting': return Icons.account_balance;
      case 'CRM': return Icons.groups;
      case 'HR': return Icons.badge;
      case 'Projects': return Icons.assignment;
      case 'Buying': return Icons.shopping_cart;
      case 'Selling': return Icons.sell;
      case 'Stock': return Icons.inventory;
      case 'Support': return Icons.support_agent;
      case 'Assets': return Icons.web_asset;
      default: return Icons.folder;
    }
  }
}
