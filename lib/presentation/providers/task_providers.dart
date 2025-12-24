import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/task_remote_datasource.dart';
import '../../data/models/task_model.dart';
import 'dio_provider.dart';

part 'task_providers.g.dart';

// Data source provider
@riverpod
TaskRemoteDataSource taskDataSource(TaskDataSourceRef ref) {
  final dio = ref.watch(dioProvider);
  return TaskRemoteDataSource(dio);
}

// Task list provider with filters
@riverpod
class TaskList extends _$TaskList {
  @override
  Future<TasksResponse> build({
    TaskStatus? status,
    TaskCategory? category,
    TaskPriority? priority,
    String? search,
  }) async {
    final dataSource = ref.watch(taskDataSourceProvider);
    return dataSource.getTasks(
      status: status,
      category: category,
      priority: priority,
      search: search,
      limit: 50,
      offset: 0,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build(
          status: null,
          category: null,
          priority: null,
          search: null,
        ));
  }

  Future<void> createTask(CreateTaskInput input) async {
    final dataSource = ref.watch(taskDataSourceProvider);
    await dataSource.createTask(input);
    await refresh();
  }

  Future<void> updateTask(String id, UpdateTaskInput input) async {
    final dataSource = ref.watch(taskDataSourceProvider);
    await dataSource.updateTask(id, input);
    await refresh();
  }

  Future<void> deleteTask(String id) async {
    final dataSource = ref.watch(taskDataSourceProvider);
    await dataSource.deleteTask(id);
    await refresh();
  }
}

// Statistics provider
@riverpod
class Statistics extends _$Statistics {
  @override
  Future<TaskStatistics> build() async {
    final dataSource = ref.watch(taskDataSourceProvider);
    return dataSource.getStatistics();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final dataSource = ref.watch(taskDataSourceProvider);
      return dataSource.getStatistics();
    });
  }
}

// Single task provider
@riverpod
Future<TaskModel> task(TaskRef ref, String id) async {
  final dataSource = ref.watch(taskDataSourceProvider);
  return dataSource.getTaskById(id);
}
