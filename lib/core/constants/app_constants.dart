class AppConstants {
  // App Info
  static const String appName = 'Smart Task Manager';

  // Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Category Colors
  static const Map<String, int> categoryColors = {
    'scheduling': 0xFF2196F3, // Blue
    'finance': 0xFF4CAF50, // Green
    'technical': 0xFFFF9800, // Orange
    'safety': 0xFFF44336, // Red
    'general': 0xFF9E9E9E, // Grey
  };

  // Priority Colors
  static const Map<String, int> priorityColors = {
    'high': 0xFFF44336, // Red
    'medium': 0xFFFF9800, // Orange
    'low': 0xFF4CAF50, // Green
  };

  // Status Colors
  static const Map<String, int> statusColors = {
    'pending': 0xFF9E9E9E, // Grey
    'in_progress': 0xFF2196F3, // Blue
    'completed': 0xFF4CAF50, // Green
  };
}
