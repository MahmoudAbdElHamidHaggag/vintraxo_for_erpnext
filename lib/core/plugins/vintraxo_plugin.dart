/// Base class for all Vintraxo Plugins.
/// Allows dynamic registration of widgets, renderers, actions, and menu items.
abstract class VintraxoPlugin {
  /// The unique identifier of the plugin.
  String get pluginId;

  /// The version of the plugin.
  String get version;

  /// Called when the plugin is initialized.
  Future<void> initialize();

  /// Called when the plugin is disabled or uninstalled.
  Future<void> dispose();
}
