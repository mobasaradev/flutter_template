part of 'theme_data.dart';

class _DarkThemeData {
  static ThemeData call() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.darkScaffold,
      primaryColor: AppColors.primary,
      appBarTheme: _AppBarDarkTheme()(),
      elevatedButtonTheme: _ElevatedButtonDarkThemeData()(),
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
