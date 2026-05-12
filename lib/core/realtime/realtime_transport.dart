/// Optional realtime capabilities for live dashboards, notifications, and events.
/// Implementations could use WebSockets, SSE, or MQTT.
abstract class RealtimeTransport {
  /// Connect to the realtime server.
  Future<void> connect(String endpoint);

  /// Disconnect from the server.
  Future<void> disconnect();

  /// Subscribe to a specific topic or channel.
  Stream<dynamic> subscribe(String topic);

  /// Publish a message to a topic or channel.
  Future<void> publish(String topic, dynamic payload);
}
