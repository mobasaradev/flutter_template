part of 'theme_data.dart';

class _LightThemeData {
  static ThemeData build() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightScaffold,
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
