import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../dependency_injection/app_state/app_state.dart';
part 'startup_error_widget.dart';

class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({
    super.key,
    required this.loading,
    required this.loaded,
  });

  final Widget loading;
  final Widget loaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);

    return appState.when(
      loading: () => loading,
      error: (error, stackTrace) => _AppStartupErrorWidget(
        errorMessage: error.toString(),
        onRetry: () {
          ref.invalidate(appStateProvider);
        },
      ),
      data: (_) => loaded,
    );
  }
}
