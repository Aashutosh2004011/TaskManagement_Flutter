import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/models/task_model.dart';
import '../constants/app_constants.dart';

extension TaskCategoryExtension on TaskCategory {
  String get displayName {
    switch (this) {
      case TaskCategory.scheduling:
        return 'Scheduling';
      case TaskCategory.finance:
        return 'Finance';
      case TaskCategory.technical:
        return 'Technical';
      case TaskCategory.safety:
        return 'Safety';
      case TaskCategory.general:
        return 'General';
    }
  }

  Color get color {
    return Color(AppConstants.categoryColors[name] ?? 0xFF9E9E9E);
  }

  IconData get icon {
    switch (this) {
      case TaskCategory.scheduling:
        return Icons.calendar_today;
      case TaskCategory.finance:
        return Icons.attach_money;
      case TaskCategory.technical:
        return Icons.build;
      case TaskCategory.safety:
        return Icons.warning;
      case TaskCategory.general:
        return Icons.task;
    }
  }
}

extension TaskPriorityExtension on TaskPriority {
  String get displayName {
    switch (this) {
      case TaskPriority.high:
        return 'High';
      case TaskPriority.medium:
        return 'Medium';
      case TaskPriority.low:
        return 'Low';
    }
  }

  Color get color {
    return Color(AppConstants.priorityColors[name] ?? 0xFF9E9E9E);
  }

  IconData get icon {
    switch (this) {
      case TaskPriority.high:
        return Icons.flag;
      case TaskPriority.medium:
        return Icons.outlined_flag;
      case TaskPriority.low:
        return Icons.flag_outlined;
    }
  }
}

extension TaskStatusExtension on TaskStatus {
  String get displayName {
    switch (this) {
      case TaskStatus.pending:
        return 'Pending';
      case TaskStatus.inProgress:
        return 'In Progress';
      case TaskStatus.completed:
        return 'Completed';
    }
  }

  Color get color {
    final key = this == TaskStatus.inProgress ? 'in_progress' : name;
    return Color(AppConstants.statusColors[key] ?? 0xFF9E9E9E);
  }

  IconData get icon {
    switch (this) {
      case TaskStatus.pending:
        return Icons.pending;
      case TaskStatus.inProgress:
        return Icons.hourglass_empty;
      case TaskStatus.completed:
        return Icons.check_circle;
    }
  }
}

extension DateTimeExtension on DateTime {
  String get formattedDate {
    return DateFormat('MMM dd, yyyy').format(this);
  }

  String get formattedDateTime {
    return DateFormat('MMM dd, yyyy HH:mm').format(this);
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  String get relativeTime {
    if (isToday) return 'Today';
    if (isTomorrow) return 'Tomorrow';
    return formattedDate;
  }
}
