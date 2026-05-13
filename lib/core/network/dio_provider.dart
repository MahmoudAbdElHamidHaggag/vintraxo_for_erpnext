import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/domain_provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final domain = ref.watch(domainProvider);
  
  final options = BaseOptions(
    baseUrl: domain ?? '',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  );

  return Dio(options);
});
