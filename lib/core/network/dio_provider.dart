import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/domain_provider.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/auth_providers.dart';

import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/proxy_provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final domain = ref.watch(domainProvider);
  final session = ref.watch(sessionProvider);
  final proxy = ref.watch(proxyProvider);
  
  final options = BaseOptions(
    baseUrl: (kIsWeb && proxy != null) 
        ? '${proxy.endsWith('/') ? proxy : '$proxy/'}${domain ?? ''}' 
        : (domain ?? ''),
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    extra: {'withCredentials': true},
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      if (session != null) 'Cookie': session,
    },
  );

  final dio = Dio(options);
  
  return dio;
});
