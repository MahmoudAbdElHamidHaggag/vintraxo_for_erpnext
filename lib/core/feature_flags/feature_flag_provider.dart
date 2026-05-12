/// A lightweight feature flag configuration system.
/// Used for beta features, staged rollouts, and enterprise feature toggles.
abstract class FeatureFlagProvider {
  /// Initialize the feature flag provider (e.g. fetch remote config).
  Future<void> initialize();

  /// Check if a specific feature flag is enabled.
  bool isEnabled(String flagKey, {bool defaultValue = false});

  /// Get a configuration value associated with a flag.
  T getValue<T>(String flagKey, {required T defaultValue});
}
