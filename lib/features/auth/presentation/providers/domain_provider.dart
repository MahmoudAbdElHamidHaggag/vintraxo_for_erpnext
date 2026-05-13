import 'package:flutter_riverpod/flutter_riverpod.dart';

class DomainNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void setDomain(String domain) {
    state = domain;
  }
}

final domainProvider = NotifierProvider<DomainNotifier, String?>(() {
  return DomainNotifier();
});
