import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../data/models/task_model.dart';
import '../../core/utils/extensions.dart';
import '../providers/task_providers.dart';

class TaskFormSheet extends HookConsumerWidget {
  final TaskModel? task;

  const TaskFormSheet({super.key, this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController(text: task?.title);
    final descriptionController =
        useTextEditingController(text: task?.description);
    final assignedToController =
        useTextEditingController(text: task?.assignedTo);

    final selectedCategory = useState<TaskCategory?>(task?.category);
    final selectedPriority = useState<TaskPriority?>(task?.priority);
    final selectedStatus = useState<TaskStatus?>(task?.status);
    final selectedDate = useState<DateTime?>(task?.dueDate);

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final isLoading = useState(false);

    Future<void> handleSubmit() async {
      if (!formKey.currentState!.validate()) return;

      isLoading.value = true;
      try {
        if (task == null) {
          // Create new task
          final input = CreateTaskInput(
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            assignedTo: assignedToController.text.trim().isEmpty
                ? null
                : assignedToController.text.trim(),
            dueDate: selectedDate.value,
            category: selectedCategory.value,
            priority: selectedPriority.value,
          );

          await ref.read(taskListProvider().notifier).createTask(input);

          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Task created successfully!'),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pop(context);
          }
        } else {
          // Update existing task
          final input = UpdateTaskInput(
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            assignedTo: assignedToController.text.trim().isEmpty
                ? null
                : assignedToController.text.trim(),
            dueDate: selectedDate.value,
            category: selectedCategory.value,
            priority: selectedPriority.value,
            status: selectedStatus.value,
          );

          await ref.read(taskListProvider().notifier).updateTask(task!.id, input);

          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Task updated successfully!'),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pop(context);
          }
        }
      } catch (e) {
        isLoading.value = false;
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: ${e.toString()}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      task == null ? 'Create New Task' : 'Edit Task',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: Form(
                  key: formKey,
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.all(16),
                    children: [
                      TextFormField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          labelText: 'Title *',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.title),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter a title';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          labelText: 'Description *',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.description),
                          alignLabelWithHint: true,
                        ),
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter a description';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: assignedToController,
                        decoration: const InputDecoration(
                          labelText: 'Assigned To',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: selectedDate.value ?? DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                          );
                          if (date != null) {
                            selectedDate.value = date;
                          }
                        },
                        child: InputDecorator(
                          decoration: const InputDecoration(
                            labelText: 'Due Date',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                          child: Text(
                            selectedDate.value?.formattedDate ??
                                'Select due date',
                            style: TextStyle(
                              color: selectedDate.value == null
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<TaskCategory>(
                        value: selectedCategory.value,
                        decoration: const InputDecoration(
                          labelText: 'Category (Auto-detected if not set)',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.category),
                        ),
                        items: TaskCategory.values.map((category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Row(
                              children: [
                                Icon(category.icon,
                                    size: 20, color: category.color),
                                const SizedBox(width: 8),
                                Text(category.displayName),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (value) => selectedCategory.value = value,
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<TaskPriority>(
                        value: selectedPriority.value,
                        decoration: const InputDecoration(
                          labelText: 'Priority (Auto-detected if not set)',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.flag),
                        ),
                        items: TaskPriority.values.map((priority) {
                          return DropdownMenuItem(
                            value: priority,
                            child: Row(
                              children: [
                                Icon(priority.icon,
                                    size: 20, color: priority.color),
                                const SizedBox(width: 8),
                                Text(priority.displayName),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (value) => selectedPriority.value = value,
                      ),
                      if (task != null) ...[
                        const SizedBox(height: 16),
                        DropdownButtonFormField<TaskStatus>(
                          value: selectedStatus.value,
                          decoration: const InputDecoration(
                            labelText: 'Status',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.task_alt),
                          ),
                          items: TaskStatus.values.map((status) {
                            return DropdownMenuItem(
                              value: status,
                              child: Row(
                                children: [
                                  Icon(status.icon, size: 20, color: status.color),
                                  const SizedBox(width: 8),
                                  Text(status.displayName),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => selectedStatus.value = value,
                        ),
                      ],
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: isLoading.value ? null : handleSubmit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: isLoading.value
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  ),
                                )
                              : Text(
                                  task == null ? 'Create Task' : 'Update Task',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
