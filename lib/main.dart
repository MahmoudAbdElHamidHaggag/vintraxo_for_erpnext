import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/core/router/app_router.dart';
import 'package:vintraxo_for_erpnext/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: VintraxoApp(),
    ),
  );
}

class VintraxoApp extends StatelessWidget {
  const VintraxoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Vintraxo For ERPNext',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
