import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProxyNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void setProxy(String? proxy) {
    state = proxy;
  }
}

final proxyProvider = NotifierProvider<ProxyNotifier, String?>(() {
  return ProxyNotifier();
});
