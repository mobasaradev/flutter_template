import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../dependency_injection/local_db/share_pref.dart';
part 'app_state_provider.g.dart';

@Riverpod(keepAlive: true)
Future<bool> isLoggedIn(Ref ref) async {
  final sP = await ref.watch(sharedPreferencesProvider.future);
  return sP.getBool('is_logged_in') ?? false;
}

