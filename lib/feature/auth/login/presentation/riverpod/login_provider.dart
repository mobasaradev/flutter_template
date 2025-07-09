import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/dependency_injection/injection/injection.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/use_case/login_use_case.dart';

part 'login_provider.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<LoginEntity?> build() {
    return null;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    final useCase = getIt<LoginUseCase>();
    try {
      final result = await useCase.execute(email, password);
      state = AsyncData(result);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
