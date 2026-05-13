import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/domain_entry_screen.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/login_screen.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/screens/splash_screen.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/screens/doc_type_view_screen.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/screens/doc_type_list_screen.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/screens/workspace_screen.dart';
import 'package:vintraxo_for_erpnext/features/ui_schema/presentation/screens/main_shell.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
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
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return MainShell(child: child);
      },
      routes: [
        GoRoute(
          path: '/workspace/:module',
          builder: (context, state) {
            final module = state.pathParameters['module'] ?? 'Accounting';
            return WorkspaceScreen(moduleName: module);
          },
        ),
        GoRoute(
          path: '/list/:name',
          builder: (context, state) {
            final name = state.pathParameters['name'] ?? 'Task';
            return DocTypeListScreen(docTypeName: name);
          },
        ),
        GoRoute(
          path: '/doctype/:name',
          builder: (context, state) {
            final name = state.pathParameters['name'] ?? 'Task';
            return DocTypeViewScreen(docTypeName: name);
          },
        ),
      ],
    ),
  ],
);
