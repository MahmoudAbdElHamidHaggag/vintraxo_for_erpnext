/// A generic authentication abstraction layer.
/// This allows Vintraxo to support various authentication methods such as
/// Session, API Key, JWT, OAuth, or SSO in the future.
abstract class AuthStrategy {
  /// Authenticates using the provided credentials/configuration.
  Future<bool> authenticate(Map<String, dynamic> credentials);

  /// Restores an existing session if available.
  Future<bool> restoreSession();

  /// Logs out and clears the session.
  Future<void> logout();

  /// Gets the current authentication token (e.g., session cookie, JWT).
  Future<String?> getToken();
}
