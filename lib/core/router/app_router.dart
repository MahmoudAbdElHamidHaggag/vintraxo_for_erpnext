import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/domain_entry_screen.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/login_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DomainEntryScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);
