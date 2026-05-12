import 'package:dio/dio.dart';
import 'package:vintraxo_for_erpnext/core/auth/auth_strategy.dart';

class ERPNextAuthStrategy implements AuthStrategy {
  final Dio dio;
  String? _sessionCookie;

  ERPNextAuthStrategy({required this.dio});

  @override
  Future<bool> authenticate(Map<String, dynamic> credentials) async {
    try {
      final response = await dio.post(
        '/api/method/login',
        data: {
          'usr': credentials['username'],
          'pwd': credentials['password'],
        },
      );

      if (response.statusCode == 200 && response.data['message'] == 'Logged In') {
        // Extract session cookie from headers
        final cookies = response.headers.map['set-cookie'];
        if (cookies != null && cookies.isNotEmpty) {
          _sessionCookie = cookies.firstWhere((cookie) => cookie.startsWith('sid='));
          // In a real app, save _sessionCookie via OfflineStorageAdapter here
        }
        return true;
      }
      return false;
    } catch (e) {
      // Handle Dio exceptions, invalid credentials, etc.
      return false;
    }
  }

  @override
  Future<String?> getToken() async {
    return _sessionCookie;
  }

  @override
  Future<void> logout() async {
    try {
      await dio.post('/api/method/logout');
    } finally {
      _sessionCookie = null;
      // Clear from OfflineStorageAdapter here
    }
  }

  @override
  Future<bool> restoreSession() async {
    // Load from OfflineStorageAdapter
    // For now, return false
    return false;
  }
}
