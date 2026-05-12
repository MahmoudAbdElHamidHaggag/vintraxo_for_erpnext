/// AI Integration Layer to remain AI-ready for future capabilities.
/// Could be implemented using OpenAI, local models, or enterprise providers.
abstract class AIProvider {
  /// Send a prompt and receive a natural language response.
  Future<String> ask(String prompt);

  /// Generate structured metadata or UI definitions from a description.
  Future<Map<String, dynamic>> generateStructuredData(String prompt);
}
