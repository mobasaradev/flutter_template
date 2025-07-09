part of '../theme_data.dart';

class _AppBarLightTheme {
  AppBarTheme call() {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: AppColors.lightScaffold,
      foregroundColor: AppColors.black,
      titleTextStyle: TextStyleExtension().titleLarge.copyWith(
        color: AppColors.black,
      ),
      iconTheme: IconThemeData(color: AppColors.black),
    );
  }
}

class _AppBarDarkTheme {
  AppBarTheme call() {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: AppColors.darkScaffold,
      surfaceTintColor: AppColors.white,
      titleTextStyle: TextStyleExtension().titleLarge.copyWith(
        color: AppColors.white,
      ),
      iconTheme: IconThemeData(color: AppColors.white),
    );
  }
}
