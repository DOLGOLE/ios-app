// lib/features/calendar/presentation/calendar_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(calendarEventsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.event),
          title: Text(events[index].title),
          subtitle: Text(events[index].date.toString()),
        ),
      ),
    );
  }
}
