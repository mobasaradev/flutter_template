import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../feature/auth/login/presentation/view/login_page.dart';
import '../../feature/home/presentation/view/home_page.dart';
import '../../feature/splash/presentation/view/splash_page.dart';
import '../common/provider/app_state_provider/app_state_provider.dart';
import '../common/widgets/app_startup/startup_widget.dart';
import '../common/widgets/navigation_shell.dart';
import 'routes.dart';

part 'parts/auth_routes.dart';
part 'parts/shell_routes.dart';
part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root');

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  final loggedInAsync = ref.watch(isLoggedInProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: Routes.initial,
    redirect: (context, state) {
      final path = state.uri.path;

      if (loggedInAsync is! AsyncData) return null;

      final loggedIn = loggedInAsync.value ?? false;

      if (path == Routes.initial) {
        return loggedIn ? Routes.home : Routes.login;
      }

      if (!loggedIn && path != Routes.login) {
        return Routes.login;
      }

      if (loggedIn && path == Routes.login) {
        return Routes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: Routes.initial,
        name: Routes.initial,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AppStartupWidget(loading: SplashPage(), loaded: SplashPage()),
        ),
      ),
      ..._authRoutes(ref),
      _shellRoutes(ref),
    ],
  );
}
