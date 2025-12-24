import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../data/models/task_model.dart';
import '../../core/utils/extensions.dart';
import '../providers/task_providers.dart';
import '../widgets/summary_card.dart';
import '../widgets/task_card.dart';
import '../widgets/task_form_sheet.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final selectedCategory = useState<TaskCategory?>(null);
    final selectedPriority = useState<TaskPriority?>(null);
    final selectedStatus = useState<TaskStatus?>(null);
    final searchQuery = useState<String>('');

    // Watch providers
    final tasksAsync = ref.watch(taskListProvider(
      category: selectedCategory.value,
      priority: selectedPriority.value,
      status: selectedStatus.value,
      search: searchQuery.value.isEmpty ? null : searchQuery.value,
    ));

    final statisticsAsync = ref.watch(statisticsProvider);

    void showTaskForm([TaskModel? task]) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => TaskFormSheet(task: task),
      ).then((_) {
        // Refresh data when sheet is closed
        ref.invalidate(taskListProvider);
        ref.invalidate(statisticsProvider);
      });
    }

    void clearFilters() {
      selectedCategory.value = null;
      selectedPriority.value = null;
      selectedStatus.value = null;
      searchQuery.value = '';
      searchController.clear();
    }

    final hasFilters = selectedCategory.value != null ||
        selectedPriority.value != null ||
        selectedStatus.value != null ||
        searchQuery.value.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smart Task Manager',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          if (hasFilters)
            IconButton(
              icon: const Icon(Icons.clear_all),
              tooltip: 'Clear filters',
              onPressed: clearFilters,
            ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(taskListProvider);
              ref.invalidate(statisticsProvider);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(taskListProvider);
          ref.invalidate(statisticsProvider);
        },
        child: CustomScrollView(
          slivers: [
            // Search Bar
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(16),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search tasks...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: searchQuery.value.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              searchController.clear();
                              searchQuery.value = '';
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    searchQuery.value = value;
                  },
                ),
              ),
            ),

            // Statistics Cards
            SliverToBoxAdapter(
              child: statisticsAsync.when(
                data: (stats) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 16),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.5,
                        children: [
                          SummaryCard(
                            title: 'Pending',
                            value: (stats.byStatus['pending'] ?? 0).toString(),
                            icon: Icons.pending,
                            color: TaskStatus.pending.color,
                            onTap: () {
                              selectedStatus.value = TaskStatus.pending;
                            },
                          ),
                          SummaryCard(
                            title: 'In Progress',
                            value: (stats.byStatus['in_progress'] ?? 0).toString(),
                            icon: Icons.hourglass_empty,
                            color: TaskStatus.inProgress.color,
                            onTap: () {
                              selectedStatus.value = TaskStatus.inProgress;
                            },
                          ),
                          SummaryCard(
                            title: 'Completed',
                            value: (stats.byStatus['completed'] ?? 0).toString(),
                            icon: Icons.check_circle,
                            color: TaskStatus.completed.color,
                            onTap: () {
                              selectedStatus.value = TaskStatus.completed;
                            },
                          ),
                          SummaryCard(
                            title: 'Total Tasks',
                            value: stats.total.toString(),
                            icon: Icons.task_alt,
                            color: Colors.blue,
                            onTap: clearFilters,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                loading: () => const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error, _) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Error loading statistics: $error'),
                ),
              ),
            ),

            // Filter Chips
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text('Filters: ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    ...TaskCategory.values.map((category) {
                      final isSelected = selectedCategory.value == category;
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          label: Text(category.displayName),
                          avatar: Icon(
                            category.icon,
                            size: 18,
                            color: isSelected ? Colors.white : category.color,
                          ),
                          selected: isSelected,
                          onSelected: (selected) {
                            selectedCategory.value = selected ? category : null;
                          },
                          selectedColor: category.color,
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                          ),
                        ),
                      );
                    }),
                    const SizedBox(width: 8),
                    const Text('Priority: ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    ...TaskPriority.values.map((priority) {
                      final isSelected = selectedPriority.value == priority;
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          label: Text(priority.displayName),
                          avatar: Icon(
                            priority.icon,
                            size: 18,
                            color: isSelected ? Colors.white : priority.color,
                          ),
                          selected: isSelected,
                          onSelected: (selected) {
                            selectedPriority.value = selected ? priority : null;
                          },
                          selectedColor: priority.color,
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 16)),

            // Task List Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      'Tasks',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    tasksAsync.whenOrNull(
                      data: (response) => Text(
                        '${response.total} total',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ) ?? const SizedBox.shrink(),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 8)),

            // Task List
            tasksAsync.when(
              data: (response) {
                if (response.data.isEmpty) {
                  return SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.inbox,
                            size: 80,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            hasFilters ? 'No tasks found' : 'No tasks yet',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Colors.grey[600],
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            hasFilters
                                ? 'Try adjusting your filters'
                                : 'Create your first task to get started',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          if (!hasFilters) ...[
                            const SizedBox(height: 24),
                            ElevatedButton.icon(
                              onPressed: () => showTaskForm(),
                              icon: const Icon(Icons.add),
                              label: const Text('Create Task'),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                }

                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final task = response.data[index];
                      return TaskCard(
                        task: task,
                        onTap: () => showTaskForm(task),
                      );
                    },
                    childCount: response.data.length,
                  ),
                );
              },
              loading: () => const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, size: 60, color: Colors.red[300]),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading tasks',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        error.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          ref.invalidate(taskListProvider);
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showTaskForm(),
        icon: const Icon(Icons.add),
        label: const Text('New Task'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}
