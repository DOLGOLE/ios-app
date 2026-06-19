// lib/features/calendar/presentation/providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarEvent {
  final String title;
  final DateTime date;
  CalendarEvent({required this.title, required this.date});
}

/// Mock provider for a list of calendar events.
final calendarEventsProvider = Provider<List<CalendarEvent>>((ref) => [
      CalendarEvent(title: 'Meeting', date: DateTime.now()),
      CalendarEvent(title: 'Gym', date: DateTime.now().add(const Duration(hours: 2))),
    ]);
