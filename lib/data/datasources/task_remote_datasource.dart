import 'package:dio/dio.dart';
import '../models/task_model.dart';
import '../../core/config/api_config.dart';

class TaskRemoteDataSource {
  final Dio _dio;

  TaskRemoteDataSource(this._dio);

  /// Create a new task
  Future<TaskModel> createTask(CreateTaskInput input) async {
    try {
      final response = await _dio.post(
        ApiConfig.tasks,
        data: input.toJson(),
      );
      // API returns: {success, message, data: {task, classification}}
      return TaskModel.fromJson(response.data['data']['task']);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// Get all tasks with optional filters
  Future<TasksResponse> getTasks({
    TaskStatus? status,
    TaskCategory? category,
    TaskPriority? priority,
    String? search,
    int? limit,
    int? offset,
  }) async {
    try {
      final queryParams = <String, dynamic>{};

      if (status != null) {
        queryParams['status'] = _statusToString(status);
      }
      if (category != null) queryParams['category'] = category.name;
      if (priority != null) queryParams['priority'] = priority.name;
      if (search != null && search.isNotEmpty) queryParams['search'] = search;
      if (limit != null) queryParams['limit'] = limit;
      if (offset != null) queryParams['offset'] = offset;

      final response = await _dio.get(
        ApiConfig.tasks,
        queryParameters: queryParams,
      );

      // API returns: {success, message, data: [...], pagination: {total, limit, offset}}
      // We need to restructure it to match TasksResponse model
      final responseData = response.data as Map<String, dynamic>;
      return TasksResponse.fromJson({
        'data': responseData['data'],
        'total': responseData['pagination']['total'],
        'limit': responseData['pagination']['limit'],
        'offset': responseData['pagination']['offset'],
      });
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// Get task by ID
  Future<TaskModel> getTaskById(String id) async {
    try {
      final response = await _dio.get(ApiConfig.taskById(id));
      // API returns: {success, message, data: {task, history}}
      return TaskModel.fromJson(response.data['data']['task']);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// Update task
  Future<TaskModel> updateTask(String id, UpdateTaskInput input) async {
    try {
      final response = await _dio.patch(
        ApiConfig.taskById(id),
        data: input.toJson(),
      );
      // API returns: {success, message, data: {task, classification}}
      return TaskModel.fromJson(response.data['data']['task']);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// Delete task
  Future<void> deleteTask(String id) async {
    try {
      await _dio.delete(ApiConfig.taskById(id));
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// Get task statistics
  Future<TaskStatistics> getStatistics() async {
    try {
      final response = await _dio.get(ApiConfig.statistics);
      // API returns: {success, message, data: {statistics}}
      return TaskStatistics.fromJson(response.data['data']);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  String _statusToString(TaskStatus status) {
    switch (status) {
      case TaskStatus.pending:
        return 'pending';
      case TaskStatus.inProgress:
        return 'in_progress';
      case TaskStatus.completed:
        return 'completed';
    }
  }

  Exception _handleError(DioException error) {
    if (error.response != null) {
      final data = error.response!.data;
      if (data is Map && data.containsKey('error')) {
        return Exception(data['error']);
      }
      return Exception('Server error: ${error.response!.statusCode}');
    } else if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return Exception('Connection timeout. Please check your internet connection.');
    } else if (error.type == DioExceptionType.unknown) {
      return Exception('Network error. Please check your internet connection.');
    }
    return Exception('An unexpected error occurred');
  }
}
