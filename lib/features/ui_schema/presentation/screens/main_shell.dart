import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/widgets/vintraxo_sidebar.dart';

class MainShell extends StatefulWidget {
  final Widget child;

  const MainShell({super.key, required this.child});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  String _selectedModule = 'Accounting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar for wide screens
          if (MediaQuery.of(context).size.width > 900)
            SizedBox(
              width: 250,
              child: VintraxoSidebar(
                selectedModule: _selectedModule,
                onModuleSelected: (module) {
                  setState(() => _selectedModule = module);
                  context.go('/workspace/$module');
                },
              ),
            ),
          
          // Main Content
          Expanded(
            child: widget.child,
          ),
        ],
      ),
      // Drawer for narrow screens
      drawer: MediaQuery.of(context).size.width <= 900
          ? VintraxoSidebar(
              selectedModule: _selectedModule,
              onModuleSelected: (module) {
                setState(() => _selectedModule = module);
                Navigator.pop(context); // Close drawer
                context.go('/workspace/$module');
              },
            )
          : null,
    );
  }
}
