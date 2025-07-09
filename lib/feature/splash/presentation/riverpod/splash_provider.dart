import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_provider.g.dart';

enum SplashStatus { loading, authenticated, unauthenticated }

@riverpod
class SplashController extends _$SplashController {
  @override
  FutureOr<SplashStatus> build() async {
    await Future.delayed(const Duration(seconds: 2));

    final isLoggedIn = await checkUserLoggedInStatus();

    return isLoggedIn
        ? SplashStatus.authenticated
        : SplashStatus.unauthenticated;
  }

  Future<bool> checkUserLoggedInStatus() async {
    return Future.value(false);
  }
}
