part of 'theme_data.dart';

class _LightThemeData {
  static ThemeData call() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightScaffold,
      primaryColor: AppColors.primary,
      appBarTheme: _AppBarLightTheme()(),
      elevatedButtonTheme: _ElevatedButtonLightThemeData()(),
      inputDecorationTheme: _InputDecorationTheme()(),
      extensions: const [
        TextStyleExtension(),
        ColorExtension(
          primary: AppColors.primary,
          success: AppColors.success,
          warning: AppColors.warning,
          error: AppColors.error,
          black: AppColors.black,
          white: AppColors.white,
          grey: AppColors.grey,
          lightGrey: AppColors.lightGrey,
          darkGrey: AppColors.darkGrey,
          transparent: AppColors.transparent,
          lightScaffold: AppColors.lightScaffold,
          darkScaffold: AppColors.darkScaffold,
        ),
      ],
    );
  }
}
