// lib/core/providers/theme_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides the current [ThemeMode] for the app.
final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
