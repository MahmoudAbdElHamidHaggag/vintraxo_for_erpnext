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
          _sessionCookie = cookies.firstWhere((cookie) => cookie.startsWith('sid='), orElse: () => cookies.first);
        } else {
          // If on Web, cookies might be handled automatically by browser, set a placeholder
          _sessionCookie = 'session_active';
        }
        return true;
      }
      return false;
    } catch (e) {
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
