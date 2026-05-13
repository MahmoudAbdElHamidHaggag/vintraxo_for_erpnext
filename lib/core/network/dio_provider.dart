import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/domain_provider.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/auth_providers.dart';

final dioProvider = Provider<Dio>((ref) {
  final domain = ref.watch(domainProvider);
  final session = ref.watch(sessionProvider);
  
  final options = BaseOptions(
    baseUrl: domain ?? '',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      if (session != null) 'Cookie': session,
    },
  );

  return Dio(options);
});
