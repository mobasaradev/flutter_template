part of '../router.dart';

List<GoRoute> _authRoutes(ref) {
  return [
    GoRoute(
      path: Routes.login,
      name: Routes.login,
      pageBuilder: (context, state) {
        return const MaterialPage(child: LoginPage());
      },
    ),
  ];
}
