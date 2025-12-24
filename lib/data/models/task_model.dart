import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

enum TaskCategory {
  @JsonValue('scheduling')
  scheduling,
  @JsonValue('finance')
  finance,
  @JsonValue('technical')
  technical,
  @JsonValue('safety')
  safety,
  @JsonValue('general')
  general,
}

enum TaskPriority {
  @JsonValue('high')
  high,
  @JsonValue('medium')
  medium,
  @JsonValue('low')
  low,
}

enum TaskStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('completed')
  completed,
}

@freezed
class ExtractedEntities with _$ExtractedEntities {
  const factory ExtractedEntities({
    List<String>? dates,
    List<String>? persons,
    List<String>? locations,
    @JsonKey(name: 'actionVerbs') List<String>? actionVerbs,
  }) = _ExtractedEntities;

  factory ExtractedEntities.fromJson(Map<String, dynamic> json) =>
      _$ExtractedEntitiesFromJson(json);
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String title,
    required String description,
    required TaskCategory category,
    required TaskPriority priority,
    required TaskStatus status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'extracted_entities')
    required ExtractedEntities extractedEntities,
    @JsonKey(name: 'suggested_actions')
    required List<String> suggestedActions,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
class CreateTaskInput with _$CreateTaskInput {
  const factory CreateTaskInput({
    required String title,
    required String description,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    TaskCategory? category,
    TaskPriority? priority,
  }) = _CreateTaskInput;

  factory CreateTaskInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskInputFromJson(json);

  Map<String, dynamic> toJson() {
    String? formatDateForApi(DateTime? date) {
      if (date == null) return null;
      final utc = date.toUtc();
      // Format as YYYY-MM-DDTHH:mm:ssZ (without milliseconds)
      return '${utc.year.toString().padLeft(4, '0')}-'
          '${utc.month.toString().padLeft(2, '0')}-'
          '${utc.day.toString().padLeft(2, '0')}T'
          '${utc.hour.toString().padLeft(2, '0')}:'
          '${utc.minute.toString().padLeft(2, '0')}:'
          '${utc.second.toString().padLeft(2, '0')}Z';
    }

    return {
      'title': title,
      'description': description,
      if (assignedTo != null) 'assigned_to': assignedTo,
      if (dueDate != null) 'due_date': formatDateForApi(dueDate),
      if (category != null) 'category': category?.name,
      if (priority != null) 'priority': priority?.name,
    };
  }
}

@freezed
class UpdateTaskInput with _$UpdateTaskInput {
  const factory UpdateTaskInput({
    String? title,
    String? description,
    TaskCategory? category,
    TaskPriority? priority,
    TaskStatus? status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
  }) = _UpdateTaskInput;

  factory UpdateTaskInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskInputFromJson(json);

  Map<String, dynamic> toJson() {
    String? formatDateForApi(DateTime? date) {
      if (date == null) return null;
      final utc = date.toUtc();
      // Format as YYYY-MM-DDTHH:mm:ssZ (without milliseconds)
      return '${utc.year.toString().padLeft(4, '0')}-'
          '${utc.month.toString().padLeft(2, '0')}-'
          '${utc.day.toString().padLeft(2, '0')}T'
          '${utc.hour.toString().padLeft(2, '0')}:'
          '${utc.minute.toString().padLeft(2, '0')}:'
          '${utc.second.toString().padLeft(2, '0')}Z';
    }

    return {
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (category != null) 'category': category?.name,
      if (priority != null) 'priority': priority?.name,
      if (status != null) 'status': _statusToJson(status),
      if (assignedTo != null) 'assigned_to': assignedTo,
      if (dueDate != null) 'due_date': formatDateForApi(dueDate),
    };
  }

  static String? _statusToJson(TaskStatus? status) {
    if (status == null) return null;
    switch (status) {
      case TaskStatus.pending:
        return 'pending';
      case TaskStatus.inProgress:
        return 'in_progress';
      case TaskStatus.completed:
        return 'completed';
    }
  }
}

@freezed
class TasksResponse with _$TasksResponse {
  const factory TasksResponse({
    required List<TaskModel> data,
    required int total,
    required int limit,
    required int offset,
  }) = _TasksResponse;

  factory TasksResponse.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseFromJson(json);
}

@freezed
class TaskStatistics with _$TaskStatistics {
  const factory TaskStatistics({
    required int total,
    @JsonKey(name: 'byStatus') required Map<String, int> byStatus,
    @JsonKey(name: 'byCategory') required Map<String, int> byCategory,
    @JsonKey(name: 'byPriority') required Map<String, int> byPriority,
  }) = _TaskStatistics;

  factory TaskStatistics.fromJson(Map<String, dynamic> json) =>
      _$TaskStatisticsFromJson(json);
}