import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String get baseUrl => dotenv.env['API_BASE_URL'] ?? 'http://localhost:3000/api';

  // Endpoints
  static const String tasks = '/tasks';
  static const String statistics = '/tasks/statistics';

  static String taskById(String id) => '/tasks/$id';
}
