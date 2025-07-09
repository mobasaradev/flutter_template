import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../local_db/share_pref.dart';
part 'app_state.g.dart';

@Riverpod(keepAlive: true)
Future<void> appState(Ref ref) async {
  ref.onDispose(() {
    ref.invalidate(sharedPreferencesProvider);
  });

  await ref.watch(sharedPreferencesProvider.future);
}