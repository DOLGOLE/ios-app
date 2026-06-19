// lib/core/router/app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/home_page.dart';
import '../../features/calendar/presentation/calendar_page.dart';
import '../../features/todo/presentation/todo_page.dart';
import '../../features/money/presentation/money_page.dart';
import '../../features/settings/presentation/settings_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _locationToTabIndex(state.location),
            onTap: (index) {
              switch (index) {
                case 0:
                  context.go('/');
                  break;
                case 1:
                  context.go('/calendar');
                  break;
                case 2:
                  context.go('/todo');
                  break;
                case 3:
                  context.go('/money');
                  break;
                case 4:
                  context.go('/settings');
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
              BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'Todo'),
              BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Money'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        );
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => const HomePage()),
        GoRoute(path: '/calendar', builder: (context, state) => const CalendarPage()),
        GoRoute(path: '/todo', builder: (context, state) => const TodoPage()),
        GoRoute(path: '/money', builder: (context, state) => const MoneyPage()),
        GoRoute(path: '/settings', builder: (context, state) => const SettingsPage()),
      ],
    ),
  ],
);

int _locationToTabIndex(String location) {
  switch (location) {
    case '/':
      return 0;
    case '/calendar':
      return 1;
    case '/todo':
      return 2;
    case '/money':
      return 3;
    case '/settings':
      return 4;
    default:
      return 0;
  }
}
