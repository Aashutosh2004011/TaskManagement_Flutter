// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExtractedEntities _$ExtractedEntitiesFromJson(Map<String, dynamic> json) {
  return _ExtractedEntities.fromJson(json);
}

/// @nodoc
mixin _$ExtractedEntities {
  List<String>? get dates => throw _privateConstructorUsedError;
  List<String>? get persons => throw _privateConstructorUsedError;
  List<String>? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'actionVerbs')
  List<String>? get actionVerbs => throw _privateConstructorUsedError;

  /// Serializes this ExtractedEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractedEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractedEntitiesCopyWith<ExtractedEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractedEntitiesCopyWith<$Res> {
  factory $ExtractedEntitiesCopyWith(
    ExtractedEntities value,
    $Res Function(ExtractedEntities) then,
  ) = _$ExtractedEntitiesCopyWithImpl<$Res, ExtractedEntities>;
  @useResult
  $Res call({
    List<String>? dates,
    List<String>? persons,
    List<String>? locations,
    @JsonKey(name: 'actionVerbs') List<String>? actionVerbs,
  });
}

/// @nodoc
class _$ExtractedEntitiesCopyWithImpl<$Res, $Val extends ExtractedEntities>
    implements $ExtractedEntitiesCopyWith<$Res> {
  _$ExtractedEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractedEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? persons = freezed,
    Object? locations = freezed,
    Object? actionVerbs = freezed,
  }) {
    return _then(
      _value.copyWith(
            dates: freezed == dates
                ? _value.dates
                : dates // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            persons: freezed == persons
                ? _value.persons
                : persons // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            locations: freezed == locations
                ? _value.locations
                : locations // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            actionVerbs: freezed == actionVerbs
                ? _value.actionVerbs
                : actionVerbs // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractedEntitiesImplCopyWith<$Res>
    implements $ExtractedEntitiesCopyWith<$Res> {
  factory _$$ExtractedEntitiesImplCopyWith(
    _$ExtractedEntitiesImpl value,
    $Res Function(_$ExtractedEntitiesImpl) then,
  ) = __$$ExtractedEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String>? dates,
    List<String>? persons,
    List<String>? locations,
    @JsonKey(name: 'actionVerbs') List<String>? actionVerbs,
  });
}

/// @nodoc
class __$$ExtractedEntitiesImplCopyWithImpl<$Res>
    extends _$ExtractedEntitiesCopyWithImpl<$Res, _$ExtractedEntitiesImpl>
    implements _$$ExtractedEntitiesImplCopyWith<$Res> {
  __$$ExtractedEntitiesImplCopyWithImpl(
    _$ExtractedEntitiesImpl _value,
    $Res Function(_$ExtractedEntitiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractedEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? persons = freezed,
    Object? locations = freezed,
    Object? actionVerbs = freezed,
  }) {
    return _then(
      _$ExtractedEntitiesImpl(
        dates: freezed == dates
            ? _value._dates
            : dates // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        persons: freezed == persons
            ? _value._persons
            : persons // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        locations: freezed == locations
            ? _value._locations
            : locations // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        actionVerbs: freezed == actionVerbs
            ? _value._actionVerbs
            : actionVerbs // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractedEntitiesImpl implements _ExtractedEntities {
  const _$ExtractedEntitiesImpl({
    final List<String>? dates,
    final List<String>? persons,
    final List<String>? locations,
    @JsonKey(name: 'actionVerbs') final List<String>? actionVerbs,
  }) : _dates = dates,
       _persons = persons,
       _locations = locations,
       _actionVerbs = actionVerbs;

  factory _$ExtractedEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractedEntitiesImplFromJson(json);

  final List<String>? _dates;
  @override
  List<String>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _persons;
  @override
  List<String>? get persons {
    final value = _persons;
    if (value == null) return null;
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _locations;
  @override
  List<String>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _actionVerbs;
  @override
  @JsonKey(name: 'actionVerbs')
  List<String>? get actionVerbs {
    final value = _actionVerbs;
    if (value == null) return null;
    if (_actionVerbs is EqualUnmodifiableListView) return _actionVerbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExtractedEntities(dates: $dates, persons: $persons, locations: $locations, actionVerbs: $actionVerbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractedEntitiesImpl &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            const DeepCollectionEquality().equals(
              other._locations,
              _locations,
            ) &&
            const DeepCollectionEquality().equals(
              other._actionVerbs,
              _actionVerbs,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_dates),
    const DeepCollectionEquality().hash(_persons),
    const DeepCollectionEquality().hash(_locations),
    const DeepCollectionEquality().hash(_actionVerbs),
  );

  /// Create a copy of ExtractedEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractedEntitiesImplCopyWith<_$ExtractedEntitiesImpl> get copyWith =>
      __$$ExtractedEntitiesImplCopyWithImpl<_$ExtractedEntitiesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractedEntitiesImplToJson(this);
  }
}

abstract class _ExtractedEntities implements ExtractedEntities {
  const factory _ExtractedEntities({
    final List<String>? dates,
    final List<String>? persons,
    final List<String>? locations,
    @JsonKey(name: 'actionVerbs') final List<String>? actionVerbs,
  }) = _$ExtractedEntitiesImpl;

  factory _ExtractedEntities.fromJson(Map<String, dynamic> json) =
      _$ExtractedEntitiesImpl.fromJson;

  @override
  List<String>? get dates;
  @override
  List<String>? get persons;
  @override
  List<String>? get locations;
  @override
  @JsonKey(name: 'actionVerbs')
  List<String>? get actionVerbs;

  /// Create a copy of ExtractedEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractedEntitiesImplCopyWith<_$ExtractedEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TaskCategory get category => throw _privateConstructorUsedError;
  TaskPriority get priority => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_to')
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'extracted_entities')
  ExtractedEntities get extractedEntities => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggested_actions')
  List<String> get suggestedActions => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    TaskCategory category,
    TaskPriority priority,
    TaskStatus status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'extracted_entities') ExtractedEntities extractedEntities,
    @JsonKey(name: 'suggested_actions') List<String> suggestedActions,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  $ExtractedEntitiesCopyWith<$Res> get extractedEntities;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? priority = null,
    Object? status = null,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
    Object? extractedEntities = null,
    Object? suggestedActions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as TaskCategory,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as TaskPriority,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TaskStatus,
            assignedTo: freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as String?,
            dueDate: freezed == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            extractedEntities: null == extractedEntities
                ? _value.extractedEntities
                : extractedEntities // ignore: cast_nullable_to_non_nullable
                      as ExtractedEntities,
            suggestedActions: null == suggestedActions
                ? _value.suggestedActions
                : suggestedActions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtractedEntitiesCopyWith<$Res> get extractedEntities {
    return $ExtractedEntitiesCopyWith<$Res>(_value.extractedEntities, (value) {
      return _then(_value.copyWith(extractedEntities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
    _$TaskModelImpl value,
    $Res Function(_$TaskModelImpl) then,
  ) = __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    TaskCategory category,
    TaskPriority priority,
    TaskStatus status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'extracted_entities') ExtractedEntities extractedEntities,
    @JsonKey(name: 'suggested_actions') List<String> suggestedActions,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  @override
  $ExtractedEntitiesCopyWith<$Res> get extractedEntities;
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
    _$TaskModelImpl _value,
    $Res Function(_$TaskModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? priority = null,
    Object? status = null,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
    Object? extractedEntities = null,
    Object? suggestedActions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TaskModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as TaskCategory,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as TaskPriority,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TaskStatus,
        assignedTo: freezed == assignedTo
            ? _value.assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as String?,
        dueDate: freezed == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        extractedEntities: null == extractedEntities
            ? _value.extractedEntities
            : extractedEntities // ignore: cast_nullable_to_non_nullable
                  as ExtractedEntities,
        suggestedActions: null == suggestedActions
            ? _value._suggestedActions
            : suggestedActions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelImpl implements _TaskModel {
  const _$TaskModelImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.priority,
    required this.status,
    @JsonKey(name: 'assigned_to') this.assignedTo,
    @JsonKey(name: 'due_date') this.dueDate,
    @JsonKey(name: 'extracted_entities') required this.extractedEntities,
    @JsonKey(name: 'suggested_actions')
    required final List<String> suggestedActions,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  }) : _suggestedActions = suggestedActions;

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final TaskCategory category;
  @override
  final TaskPriority priority;
  @override
  final TaskStatus status;
  @override
  @JsonKey(name: 'assigned_to')
  final String? assignedTo;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  @override
  @JsonKey(name: 'extracted_entities')
  final ExtractedEntities extractedEntities;
  final List<String> _suggestedActions;
  @override
  @JsonKey(name: 'suggested_actions')
  List<String> get suggestedActions {
    if (_suggestedActions is EqualUnmodifiableListView)
      return _suggestedActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedActions);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, description: $description, category: $category, priority: $priority, status: $status, assignedTo: $assignedTo, dueDate: $dueDate, extractedEntities: $extractedEntities, suggestedActions: $suggestedActions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.extractedEntities, extractedEntities) ||
                other.extractedEntities == extractedEntities) &&
            const DeepCollectionEquality().equals(
              other._suggestedActions,
              _suggestedActions,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    category,
    priority,
    status,
    assignedTo,
    dueDate,
    extractedEntities,
    const DeepCollectionEquality().hash(_suggestedActions),
    createdAt,
    updatedAt,
  );

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(this);
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel({
    required final String id,
    required final String title,
    required final String description,
    required final TaskCategory category,
    required final TaskPriority priority,
    required final TaskStatus status,
    @JsonKey(name: 'assigned_to') final String? assignedTo,
    @JsonKey(name: 'due_date') final DateTime? dueDate,
    @JsonKey(name: 'extracted_entities')
    required final ExtractedEntities extractedEntities,
    @JsonKey(name: 'suggested_actions')
    required final List<String> suggestedActions,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$TaskModelImpl;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  TaskCategory get category;
  @override
  TaskPriority get priority;
  @override
  TaskStatus get status;
  @override
  @JsonKey(name: 'assigned_to')
  String? get assignedTo;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;
  @override
  @JsonKey(name: 'extracted_entities')
  ExtractedEntities get extractedEntities;
  @override
  @JsonKey(name: 'suggested_actions')
  List<String> get suggestedActions;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTaskInput _$CreateTaskInputFromJson(Map<String, dynamic> json) {
  return _CreateTaskInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_to')
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;
  TaskCategory? get category => throw _privateConstructorUsedError;
  TaskPriority? get priority => throw _privateConstructorUsedError;

  /// Serializes this CreateTaskInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTaskInputCopyWith<CreateTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskInputCopyWith<$Res> {
  factory $CreateTaskInputCopyWith(
    CreateTaskInput value,
    $Res Function(CreateTaskInput) then,
  ) = _$CreateTaskInputCopyWithImpl<$Res, CreateTaskInput>;
  @useResult
  $Res call({
    String title,
    String description,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    TaskCategory? category,
    TaskPriority? priority,
  });
}

/// @nodoc
class _$CreateTaskInputCopyWithImpl<$Res, $Val extends CreateTaskInput>
    implements $CreateTaskInputCopyWith<$Res> {
  _$CreateTaskInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
    Object? category = freezed,
    Object? priority = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedTo: freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as String?,
            dueDate: freezed == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as TaskCategory?,
            priority: freezed == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as TaskPriority?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateTaskInputImplCopyWith<$Res>
    implements $CreateTaskInputCopyWith<$Res> {
  factory _$$CreateTaskInputImplCopyWith(
    _$CreateTaskInputImpl value,
    $Res Function(_$CreateTaskInputImpl) then,
  ) = __$$CreateTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String description,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    TaskCategory? category,
    TaskPriority? priority,
  });
}

/// @nodoc
class __$$CreateTaskInputImplCopyWithImpl<$Res>
    extends _$CreateTaskInputCopyWithImpl<$Res, _$CreateTaskInputImpl>
    implements _$$CreateTaskInputImplCopyWith<$Res> {
  __$$CreateTaskInputImplCopyWithImpl(
    _$CreateTaskInputImpl _value,
    $Res Function(_$CreateTaskInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
    Object? category = freezed,
    Object? priority = freezed,
  }) {
    return _then(
      _$CreateTaskInputImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedTo: freezed == assignedTo
            ? _value.assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as String?,
        dueDate: freezed == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as TaskCategory?,
        priority: freezed == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as TaskPriority?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskInputImpl implements _CreateTaskInput {
  const _$CreateTaskInputImpl({
    required this.title,
    required this.description,
    @JsonKey(name: 'assigned_to') this.assignedTo,
    @JsonKey(name: 'due_date') this.dueDate,
    this.category,
    this.priority,
  });

  factory _$CreateTaskInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'assigned_to')
  final String? assignedTo;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  @override
  final TaskCategory? category;
  @override
  final TaskPriority? priority;

  @override
  String toString() {
    return 'CreateTaskInput(title: $title, description: $description, assignedTo: $assignedTo, dueDate: $dueDate, category: $category, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    assignedTo,
    dueDate,
    category,
    priority,
  );

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskInputImplCopyWith<_$CreateTaskInputImpl> get copyWith =>
      __$$CreateTaskInputImplCopyWithImpl<_$CreateTaskInputImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskInputImplToJson(this);
  }
}

abstract class _CreateTaskInput implements CreateTaskInput {
  const factory _CreateTaskInput({
    required final String title,
    required final String description,
    @JsonKey(name: 'assigned_to') final String? assignedTo,
    @JsonKey(name: 'due_date') final DateTime? dueDate,
    final TaskCategory? category,
    final TaskPriority? priority,
  }) = _$CreateTaskInputImpl;

  factory _CreateTaskInput.fromJson(Map<String, dynamic> json) =
      _$CreateTaskInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'assigned_to')
  String? get assignedTo;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;
  @override
  TaskCategory? get category;
  @override
  TaskPriority? get priority;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskInputImplCopyWith<_$CreateTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskInput _$UpdateTaskInputFromJson(Map<String, dynamic> json) {
  return _UpdateTaskInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskCategory? get category => throw _privateConstructorUsedError;
  TaskPriority? get priority => throw _privateConstructorUsedError;
  TaskStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_to')
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskInputCopyWith<UpdateTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskInputCopyWith<$Res> {
  factory $UpdateTaskInputCopyWith(
    UpdateTaskInput value,
    $Res Function(UpdateTaskInput) then,
  ) = _$UpdateTaskInputCopyWithImpl<$Res, UpdateTaskInput>;
  @useResult
  $Res call({
    String? title,
    String? description,
    TaskCategory? category,
    TaskPriority? priority,
    TaskStatus? status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
  });
}

/// @nodoc
class _$UpdateTaskInputCopyWithImpl<$Res, $Val extends UpdateTaskInput>
    implements $UpdateTaskInputCopyWith<$Res> {
  _$UpdateTaskInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as TaskCategory?,
            priority: freezed == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as TaskPriority?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TaskStatus?,
            assignedTo: freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as String?,
            dueDate: freezed == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTaskInputImplCopyWith<$Res>
    implements $UpdateTaskInputCopyWith<$Res> {
  factory _$$UpdateTaskInputImplCopyWith(
    _$UpdateTaskInputImpl value,
    $Res Function(_$UpdateTaskInputImpl) then,
  ) = __$$UpdateTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? title,
    String? description,
    TaskCategory? category,
    TaskPriority? priority,
    TaskStatus? status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'due_date') DateTime? dueDate,
  });
}

/// @nodoc
class __$$UpdateTaskInputImplCopyWithImpl<$Res>
    extends _$UpdateTaskInputCopyWithImpl<$Res, _$UpdateTaskInputImpl>
    implements _$$UpdateTaskInputImplCopyWith<$Res> {
  __$$UpdateTaskInputImplCopyWithImpl(
    _$UpdateTaskInputImpl _value,
    $Res Function(_$UpdateTaskInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? assignedTo = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(
      _$UpdateTaskInputImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as TaskCategory?,
        priority: freezed == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as TaskPriority?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TaskStatus?,
        assignedTo: freezed == assignedTo
            ? _value.assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as String?,
        dueDate: freezed == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskInputImpl implements _UpdateTaskInput {
  const _$UpdateTaskInputImpl({
    this.title,
    this.description,
    this.category,
    this.priority,
    this.status,
    @JsonKey(name: 'assigned_to') this.assignedTo,
    @JsonKey(name: 'due_date') this.dueDate,
  });

  factory _$UpdateTaskInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final TaskCategory? category;
  @override
  final TaskPriority? priority;
  @override
  final TaskStatus? status;
  @override
  @JsonKey(name: 'assigned_to')
  final String? assignedTo;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;

  @override
  String toString() {
    return 'UpdateTaskInput(title: $title, description: $description, category: $category, priority: $priority, status: $status, assignedTo: $assignedTo, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    category,
    priority,
    status,
    assignedTo,
    dueDate,
  );

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      __$$UpdateTaskInputImplCopyWithImpl<_$UpdateTaskInputImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskInputImplToJson(this);
  }
}

abstract class _UpdateTaskInput implements UpdateTaskInput {
  const factory _UpdateTaskInput({
    final String? title,
    final String? description,
    final TaskCategory? category,
    final TaskPriority? priority,
    final TaskStatus? status,
    @JsonKey(name: 'assigned_to') final String? assignedTo,
    @JsonKey(name: 'due_date') final DateTime? dueDate,
  }) = _$UpdateTaskInputImpl;

  factory _UpdateTaskInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  TaskCategory? get category;
  @override
  TaskPriority? get priority;
  @override
  TaskStatus? get status;
  @override
  @JsonKey(name: 'assigned_to')
  String? get assignedTo;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksResponse _$TasksResponseFromJson(Map<String, dynamic> json) {
  return _TasksResponse.fromJson(json);
}

/// @nodoc
mixin _$TasksResponse {
  List<TaskModel> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this TasksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksResponseCopyWith<TasksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksResponseCopyWith<$Res> {
  factory $TasksResponseCopyWith(
    TasksResponse value,
    $Res Function(TasksResponse) then,
  ) = _$TasksResponseCopyWithImpl<$Res, TasksResponse>;
  @useResult
  $Res call({List<TaskModel> data, int total, int limit, int offset});
}

/// @nodoc
class _$TasksResponseCopyWithImpl<$Res, $Val extends TasksResponse>
    implements $TasksResponseCopyWith<$Res> {
  _$TasksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<TaskModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            offset: null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TasksResponseImplCopyWith<$Res>
    implements $TasksResponseCopyWith<$Res> {
  factory _$$TasksResponseImplCopyWith(
    _$TasksResponseImpl value,
    $Res Function(_$TasksResponseImpl) then,
  ) = __$$TasksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskModel> data, int total, int limit, int offset});
}

/// @nodoc
class __$$TasksResponseImplCopyWithImpl<$Res>
    extends _$TasksResponseCopyWithImpl<$Res, _$TasksResponseImpl>
    implements _$$TasksResponseImplCopyWith<$Res> {
  __$$TasksResponseImplCopyWithImpl(
    _$TasksResponseImpl _value,
    $Res Function(_$TasksResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _$TasksResponseImpl(
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<TaskModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        offset: null == offset
            ? _value.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksResponseImpl implements _TasksResponse {
  const _$TasksResponseImpl({
    required final List<TaskModel> data,
    required this.total,
    required this.limit,
    required this.offset,
  }) : _data = data;

  factory _$TasksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksResponseImplFromJson(json);

  final List<TaskModel> _data;
  @override
  List<TaskModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int total;
  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'TasksResponse(data: $data, total: $total, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    total,
    limit,
    offset,
  );

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksResponseImplCopyWith<_$TasksResponseImpl> get copyWith =>
      __$$TasksResponseImplCopyWithImpl<_$TasksResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksResponseImplToJson(this);
  }
}

abstract class _TasksResponse implements TasksResponse {
  const factory _TasksResponse({
    required final List<TaskModel> data,
    required final int total,
    required final int limit,
    required final int offset,
  }) = _$TasksResponseImpl;

  factory _TasksResponse.fromJson(Map<String, dynamic> json) =
      _$TasksResponseImpl.fromJson;

  @override
  List<TaskModel> get data;
  @override
  int get total;
  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksResponseImplCopyWith<_$TasksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskStatistics _$TaskStatisticsFromJson(Map<String, dynamic> json) {
  return _TaskStatistics.fromJson(json);
}

/// @nodoc
mixin _$TaskStatistics {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'byStatus')
  Map<String, int> get byStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'byCategory')
  Map<String, int> get byCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'byPriority')
  Map<String, int> get byPriority => throw _privateConstructorUsedError;

  /// Serializes this TaskStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStatisticsCopyWith<TaskStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStatisticsCopyWith<$Res> {
  factory $TaskStatisticsCopyWith(
    TaskStatistics value,
    $Res Function(TaskStatistics) then,
  ) = _$TaskStatisticsCopyWithImpl<$Res, TaskStatistics>;
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'byStatus') Map<String, int> byStatus,
    @JsonKey(name: 'byCategory') Map<String, int> byCategory,
    @JsonKey(name: 'byPriority') Map<String, int> byPriority,
  });
}

/// @nodoc
class _$TaskStatisticsCopyWithImpl<$Res, $Val extends TaskStatistics>
    implements $TaskStatisticsCopyWith<$Res> {
  _$TaskStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? byStatus = null,
    Object? byCategory = null,
    Object? byPriority = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            byStatus: null == byStatus
                ? _value.byStatus
                : byStatus // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            byCategory: null == byCategory
                ? _value.byCategory
                : byCategory // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            byPriority: null == byPriority
                ? _value.byPriority
                : byPriority // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskStatisticsImplCopyWith<$Res>
    implements $TaskStatisticsCopyWith<$Res> {
  factory _$$TaskStatisticsImplCopyWith(
    _$TaskStatisticsImpl value,
    $Res Function(_$TaskStatisticsImpl) then,
  ) = __$$TaskStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'byStatus') Map<String, int> byStatus,
    @JsonKey(name: 'byCategory') Map<String, int> byCategory,
    @JsonKey(name: 'byPriority') Map<String, int> byPriority,
  });
}

/// @nodoc
class __$$TaskStatisticsImplCopyWithImpl<$Res>
    extends _$TaskStatisticsCopyWithImpl<$Res, _$TaskStatisticsImpl>
    implements _$$TaskStatisticsImplCopyWith<$Res> {
  __$$TaskStatisticsImplCopyWithImpl(
    _$TaskStatisticsImpl _value,
    $Res Function(_$TaskStatisticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? byStatus = null,
    Object? byCategory = null,
    Object? byPriority = null,
  }) {
    return _then(
      _$TaskStatisticsImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        byStatus: null == byStatus
            ? _value._byStatus
            : byStatus // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        byCategory: null == byCategory
            ? _value._byCategory
            : byCategory // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        byPriority: null == byPriority
            ? _value._byPriority
            : byPriority // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskStatisticsImpl implements _TaskStatistics {
  const _$TaskStatisticsImpl({
    required this.total,
    @JsonKey(name: 'byStatus') required final Map<String, int> byStatus,
    @JsonKey(name: 'byCategory') required final Map<String, int> byCategory,
    @JsonKey(name: 'byPriority') required final Map<String, int> byPriority,
  }) : _byStatus = byStatus,
       _byCategory = byCategory,
       _byPriority = byPriority;

  factory _$TaskStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskStatisticsImplFromJson(json);

  @override
  final int total;
  final Map<String, int> _byStatus;
  @override
  @JsonKey(name: 'byStatus')
  Map<String, int> get byStatus {
    if (_byStatus is EqualUnmodifiableMapView) return _byStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byStatus);
  }

  final Map<String, int> _byCategory;
  @override
  @JsonKey(name: 'byCategory')
  Map<String, int> get byCategory {
    if (_byCategory is EqualUnmodifiableMapView) return _byCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byCategory);
  }

  final Map<String, int> _byPriority;
  @override
  @JsonKey(name: 'byPriority')
  Map<String, int> get byPriority {
    if (_byPriority is EqualUnmodifiableMapView) return _byPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byPriority);
  }

  @override
  String toString() {
    return 'TaskStatistics(total: $total, byStatus: $byStatus, byCategory: $byCategory, byPriority: $byPriority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStatisticsImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._byStatus, _byStatus) &&
            const DeepCollectionEquality().equals(
              other._byCategory,
              _byCategory,
            ) &&
            const DeepCollectionEquality().equals(
              other._byPriority,
              _byPriority,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    const DeepCollectionEquality().hash(_byStatus),
    const DeepCollectionEquality().hash(_byCategory),
    const DeepCollectionEquality().hash(_byPriority),
  );

  /// Create a copy of TaskStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStatisticsImplCopyWith<_$TaskStatisticsImpl> get copyWith =>
      __$$TaskStatisticsImplCopyWithImpl<_$TaskStatisticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskStatisticsImplToJson(this);
  }
}

abstract class _TaskStatistics implements TaskStatistics {
  const factory _TaskStatistics({
    required final int total,
    @JsonKey(name: 'byStatus') required final Map<String, int> byStatus,
    @JsonKey(name: 'byCategory') required final Map<String, int> byCategory,
    @JsonKey(name: 'byPriority') required final Map<String, int> byPriority,
  }) = _$TaskStatisticsImpl;

  factory _TaskStatistics.fromJson(Map<String, dynamic> json) =
      _$TaskStatisticsImpl.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'byStatus')
  Map<String, int> get byStatus;
  @override
  @JsonKey(name: 'byCategory')
  Map<String, int> get byCategory;
  @override
  @JsonKey(name: 'byPriority')
  Map<String, int> get byPriority;

  /// Create a copy of TaskStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStatisticsImplCopyWith<_$TaskStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
