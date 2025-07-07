import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/extension/extension.dart';


import '../../../core/theme/notifier/theme_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeNotifierProvider);
    final notifier = ref.read(themeNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Page!',
              style: context.textStyle.headlineSmall.copyWith(
                color: context.color.success,
              ),
            ),
            IconButton(
              icon: Icon(
                mode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
              ),
              onPressed: notifier.toggleTheme,
            ),
          ],
        ),
      ),
    );
  }
}
