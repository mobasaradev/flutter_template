import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/common/provider/app_state_provider/app_state_provider.dart';
import '../../../../../core/dependency_injection/injection/injection.dart';
import '../../../../../core/dependency_injection/local_db/share_pref.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/use_case/login_use_case.dart';

part 'login_provider.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<LoginEntity?> build() => null;

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    final useCase = getIt<LoginUseCase>();

    try {
      final result = await useCase.execute(email, password);

      final sp = await ref.read(sharedPreferencesProvider.future);
      await sp.setBool('is_logged_in', true);

      state = AsyncData(result);
      ref.invalidate(isLoggedInProvider);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
