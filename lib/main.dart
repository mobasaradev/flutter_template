import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/dependency_injection/injection/injection.dart';
import 'core/theme/theme_data/theme_data.dart';
import 'core/theme/theme_notifier.dart';
import 'feature/home/presentation/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize dependency injection
  setupInjection();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.light,
      darkTheme: AppThemeData.dark,
      themeMode: ref.watch(themeNotifierProvider),
      home: HomePage(),
    );
  }
}
