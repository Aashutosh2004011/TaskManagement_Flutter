// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskDataSourceHash() => r'b0f43cb913d428e2bdbfb644d6b0c04324abef1d';

/// See also [taskDataSource].
@ProviderFor(taskDataSource)
final taskDataSourceProvider =
    AutoDisposeProvider<TaskRemoteDataSource>.internal(
      taskDataSource,
      name: r'taskDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$taskDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TaskDataSourceRef = AutoDisposeProviderRef<TaskRemoteDataSource>;
String _$taskHash() => r'dc49843c3a5e3080d85b90aaf393f368e5440f3d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [task].
@ProviderFor(task)
const taskProvider = TaskFamily();

/// See also [task].
class TaskFamily extends Family<AsyncValue<TaskModel>> {
  /// See also [task].
  const TaskFamily();

  /// See also [task].
  TaskProvider call(String id) {
    return TaskProvider(id);
  }

  @override
  TaskProvider getProviderOverride(covariant TaskProvider provider) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'taskProvider';
}

/// See also [task].
class TaskProvider extends AutoDisposeFutureProvider<TaskModel> {
  /// See also [task].
  TaskProvider(String id)
    : this._internal(
        (ref) => task(ref as TaskRef, id),
        from: taskProvider,
        name: r'taskProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$taskHash,
        dependencies: TaskFamily._dependencies,
        allTransitiveDependencies: TaskFamily._allTransitiveDependencies,
        id: id,
      );

  TaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(FutureOr<TaskModel> Function(TaskRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: TaskProvider._internal(
        (ref) => create(ref as TaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TaskModel> createElement() {
    return _TaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TaskRef on AutoDisposeFutureProviderRef<TaskModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TaskProviderElement extends AutoDisposeFutureProviderElement<TaskModel>
    with TaskRef {
  _TaskProviderElement(super.provider);

  @override
  String get id => (origin as TaskProvider).id;
}

String _$taskListHash() => r'980adef80e662c120ef189625345f94fb0274a43';

abstract class _$TaskList
    extends BuildlessAutoDisposeAsyncNotifier<TasksResponse> {
  late final TaskStatus? status;
  late final TaskCategory? category;
  late final TaskPriority? priority;
  late final String? search;

  FutureOr<TasksResponse> build({
    TaskStatus? status,
    TaskCategory? category,
    TaskPriority? priority,
    String? search,
  });
}

/// See also [TaskList].
@ProviderFor(TaskList)
const taskListProvider = TaskListFamily();

/// See also [TaskList].
class TaskListFamily extends Family<AsyncValue<TasksResponse>> {
  /// See also [TaskList].
  const TaskListFamily();

  /// See also [TaskList].
  TaskListProvider call({
    TaskStatus? status,
    TaskCategory? category,
    TaskPriority? priority,
    String? search,
  }) {
    return TaskListProvider(
      status: status,
      category: category,
      priority: priority,
      search: search,
    );
  }

  @override
  TaskListProvider getProviderOverride(covariant TaskListProvider provider) {
    return call(
      status: provider.status,
      category: provider.category,
      priority: provider.priority,
      search: provider.search,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'taskListProvider';
}

/// See also [TaskList].
class TaskListProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TaskList, TasksResponse> {
  /// See also [TaskList].
  TaskListProvider({
    TaskStatus? status,
    TaskCategory? category,
    TaskPriority? priority,
    String? search,
  }) : this._internal(
         () => TaskList()
           ..status = status
           ..category = category
           ..priority = priority
           ..search = search,
         from: taskListProvider,
         name: r'taskListProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$taskListHash,
         dependencies: TaskListFamily._dependencies,
         allTransitiveDependencies: TaskListFamily._allTransitiveDependencies,
         status: status,
         category: category,
         priority: priority,
         search: search,
       );

  TaskListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
    required this.category,
    required this.priority,
    required this.search,
  }) : super.internal();

  final TaskStatus? status;
  final TaskCategory? category;
  final TaskPriority? priority;
  final String? search;

  @override
  FutureOr<TasksResponse> runNotifierBuild(covariant TaskList notifier) {
    return notifier.build(
      status: status,
      category: category,
      priority: priority,
      search: search,
    );
  }

  @override
  Override overrideWith(TaskList Function() create) {
    return ProviderOverride(
      origin: this,
      override: TaskListProvider._internal(
        () => create()
          ..status = status
          ..category = category
          ..priority = priority
          ..search = search,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
        category: category,
        priority: priority,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TaskList, TasksResponse>
  createElement() {
    return _TaskListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskListProvider &&
        other.status == status &&
        other.category == category &&
        other.priority == priority &&
        other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, priority.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TaskListRef on AutoDisposeAsyncNotifierProviderRef<TasksResponse> {
  /// The parameter `status` of this provider.
  TaskStatus? get status;

  /// The parameter `category` of this provider.
  TaskCategory? get category;

  /// The parameter `priority` of this provider.
  TaskPriority? get priority;

  /// The parameter `search` of this provider.
  String? get search;
}

class _TaskListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TaskList, TasksResponse>
    with TaskListRef {
  _TaskListProviderElement(super.provider);

  @override
  TaskStatus? get status => (origin as TaskListProvider).status;
  @override
  TaskCategory? get category => (origin as TaskListProvider).category;
  @override
  TaskPriority? get priority => (origin as TaskListProvider).priority;
  @override
  String? get search => (origin as TaskListProvider).search;
}

String _$statisticsHash() => r'c35a620f6d8c8866b4877d3f421e3f7ef486c6ae';

/// See also [Statistics].
@ProviderFor(Statistics)
final statisticsProvider =
    AutoDisposeAsyncNotifierProvider<Statistics, TaskStatistics>.internal(
      Statistics.new,
      name: r'statisticsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$statisticsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Statistics = AutoDisposeAsyncNotifier<TaskStatistics>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
