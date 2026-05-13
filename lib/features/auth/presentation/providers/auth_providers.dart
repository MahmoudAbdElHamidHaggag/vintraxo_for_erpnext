import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/core/network/dio_provider.dart';
import 'package:vintraxo_for_erpnext/core/auth/auth_strategy.dart';
import 'package:vintraxo_for_erpnext/features/auth/data/erpnext_auth_strategy.dart';

final authStrategyProvider = Provider<AuthStrategy>((ref) {
  final dio = ref.watch(dioProvider);
  return ERPNextAuthStrategy(dio: dio);
});

class AuthStateNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void update(bool value) => state = value;
}

final authStateProvider = NotifierProvider<AuthStateNotifier, bool>(() {
  return AuthStateNotifier();
});

class SessionNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void update(String? value) => state = value;
}

final sessionProvider = NotifierProvider<SessionNotifier, String?>(() {
  return SessionNotifier();
});
