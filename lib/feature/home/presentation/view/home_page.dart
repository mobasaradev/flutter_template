import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home Page'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/anotherPage');
                },
                child: const Text('Go to Another Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
