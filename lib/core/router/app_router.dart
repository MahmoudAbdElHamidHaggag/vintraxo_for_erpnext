import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/domain_entry_screen.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/login_screen.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/screens/doc_type_view_screen.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/screens/doc_type_list_screen.dart';

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
    GoRoute(
      path: '/list/:name',
      builder: (BuildContext context, GoRouterState state) {
        final name = state.pathParameters['name'] ?? 'Task';
        return DocTypeListScreen(docTypeName: name);
      },
    ),
    GoRoute(
      path: '/doctype/:name',
      builder: (BuildContext context, GoRouterState state) {
        final name = state.pathParameters['name'] ?? 'Task';
        return DocTypeViewScreen(docTypeName: name);
      },
    ),
  ],
);
