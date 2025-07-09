part of 'startup_widget.dart';

class _AppStartupErrorWidget extends StatelessWidget {
  const _AppStartupErrorWidget({
    required this.errorMessage,
    required this.onRetry,
  });

  final String errorMessage;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: onRetry,
          child: const Icon(Icons.refresh),
        ),
        body: Center(
          child: Text(errorMessage),
        ),
      ),
    );
  }
}
