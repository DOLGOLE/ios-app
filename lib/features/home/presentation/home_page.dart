// lib/features/home/presentation/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Placeholder UI; actual data will be provided by mock providers later.
    final summary = ref.watch(homeTodaySummaryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text('Home Dashboard – $summary')),
    );
  }
}
