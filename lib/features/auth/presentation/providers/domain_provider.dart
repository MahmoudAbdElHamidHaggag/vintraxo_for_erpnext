import 'package:flutter_riverpod/flutter_riverpod.dart';

class DomainNotifier extends StateNotifier<String?> {
  DomainNotifier() : super(null);

  void setDomain(String domain) {
    // In a real implementation, this would save to OfflineStorageAdapter or SharedPreferences
    state = domain;
  }
}

final domainProvider = StateNotifierProvider<DomainNotifier, String?>((ref) {
  return DomainNotifier();
});
