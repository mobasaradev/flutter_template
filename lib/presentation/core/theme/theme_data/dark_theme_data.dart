part of 'theme_data.dart';

class _DarkThemeData {
  static ThemeData build() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.darkScaffold,
      primaryColor: AppColors.primary,
      extensions: const [
        TextStyleExtension(),
        ColorExtension(
          primary: AppColors.primary,
          success: AppColors.success,
          warning: AppColors.warning,
        ),
      ],
    );
  }
}
