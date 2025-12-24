// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractedEntitiesImpl _$$ExtractedEntitiesImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractedEntitiesImpl(
  dates: (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList(),
  persons: (json['persons'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  locations: (json['locations'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  actionVerbs: (json['actionVerbs'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$ExtractedEntitiesImplToJson(
  _$ExtractedEntitiesImpl instance,
) => <String, dynamic>{
  'dates': instance.dates,
  'persons': instance.persons,
  'locations': instance.locations,
  'actionVerbs': instance.actionVerbs,
};

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: $enumDecode(_$TaskCategoryEnumMap, json['category']),
      priority: $enumDecode(_$TaskPriorityEnumMap, json['priority']),
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      assignedTo: json['assigned_to'] as String?,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      extractedEntities: ExtractedEntities.fromJson(
        json['extracted_entities'] as Map<String, dynamic>,
      ),
      suggestedActions: (json['suggested_actions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': _$TaskCategoryEnumMap[instance.category]!,
      'priority': _$TaskPriorityEnumMap[instance.priority]!,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'assigned_to': instance.assignedTo,
      'due_date': instance.dueDate?.toIso8601String(),
      'extracted_entities': instance.extractedEntities,
      'suggested_actions': instance.suggestedActions,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$TaskCategoryEnumMap = {
  TaskCategory.scheduling: 'scheduling',
  TaskCategory.finance: 'finance',
  TaskCategory.technical: 'technical',
  TaskCategory.safety: 'safety',
  TaskCategory.general: 'general',
};

const _$TaskPriorityEnumMap = {
  TaskPriority.high: 'high',
  TaskPriority.medium: 'medium',
  TaskPriority.low: 'low',
};

const _$TaskStatusEnumMap = {
  TaskStatus.pending: 'pending',
  TaskStatus.inProgress: 'in_progress',
  TaskStatus.completed: 'completed',
};

_$CreateTaskInputImpl _$$CreateTaskInputImplFromJson(
  Map<String, dynamic> json,
) => _$CreateTaskInputImpl(
  title: json['title'] as String,
  description: json['description'] as String,
  assignedTo: json['assigned_to'] as String?,
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  category: $enumDecodeNullable(_$TaskCategoryEnumMap, json['category']),
  priority: $enumDecodeNullable(_$TaskPriorityEnumMap, json['priority']),
);

Map<String, dynamic> _$$CreateTaskInputImplToJson(
  _$CreateTaskInputImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'assigned_to': instance.assignedTo,
  'due_date': instance.dueDate?.toIso8601String(),
  'category': _$TaskCategoryEnumMap[instance.category],
  'priority': _$TaskPriorityEnumMap[instance.priority],
};

_$UpdateTaskInputImpl _$$UpdateTaskInputImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTaskInputImpl(
  title: json['title'] as String?,
  description: json['description'] as String?,
  category: $enumDecodeNullable(_$TaskCategoryEnumMap, json['category']),
  priority: $enumDecodeNullable(_$TaskPriorityEnumMap, json['priority']),
  status: $enumDecodeNullable(_$TaskStatusEnumMap, json['status']),
  assignedTo: json['assigned_to'] as String?,
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
);

Map<String, dynamic> _$$UpdateTaskInputImplToJson(
  _$UpdateTaskInputImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'category': _$TaskCategoryEnumMap[instance.category],
  'priority': _$TaskPriorityEnumMap[instance.priority],
  'status': _$TaskStatusEnumMap[instance.status],
  'assigned_to': instance.assignedTo,
  'due_date': instance.dueDate?.toIso8601String(),
};

_$TasksResponseImpl _$$TasksResponseImplFromJson(Map<String, dynamic> json) =>
    _$TasksResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$TasksResponseImplToJson(_$TasksResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$TaskStatisticsImpl _$$TaskStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$TaskStatisticsImpl(
      total: (json['total'] as num).toInt(),
      byStatus: Map<String, int>.from(json['byStatus'] as Map),
      byCategory: Map<String, int>.from(json['byCategory'] as Map),
      byPriority: Map<String, int>.from(json['byPriority'] as Map),
    );

Map<String, dynamic> _$$TaskStatisticsImplToJson(
  _$TaskStatisticsImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'byStatus': instance.byStatus,
  'byCategory': instance.byCategory,
  'byPriority': instance.byPriority,
};
