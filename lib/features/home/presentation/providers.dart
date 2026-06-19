// lib/features/home/presentation/providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../calendar/presentation/providers.dart' as calendar;
import '../../todo/presentation/providers.dart' as todo;
import '../../money/presentation/providers.dart' as money;

/// Aggregates data from other feature providers for the Home dashboard.
final homeTodaySummaryProvider = Provider<String>((ref) {
  final calendarEvents = ref.watch(calendar.calendarEventsProvider);
  final todoTasks = ref.watch(todo.todoTasksProvider);
  final moneyTransactions = ref.watch(money.moneyTransactionsProvider);
  return 'Summary: ${calendarEvents.length} events, ${todoTasks.length} tasks, ${moneyTransactions.length} transactions';
});
