// lib/features/todo/presentation/providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoTask {
  final String title;
  final bool completed;
  final DateTime? dueDate;
  final String? category;
  TodoTask({required this.title, this.completed = false, this.dueDate, this.category});
}

/// Mock provider for a list of todo tasks.
final todoTasksProvider = Provider<List<TodoTask>>((ref) => [
      TodoTask(title: 'Buy groceries', completed: false, dueDate: DateTime.now().add(const Duration(days: 1))),
      TodoTask(title: 'Read a book', completed: true, dueDate: DateTime.now().subtract(const Duration(days: 1))),
    ]);
