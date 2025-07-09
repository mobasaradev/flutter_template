part of '../theme_data.dart';

class _InputDecorationTheme {
  InputDecorationTheme call() {
    return InputDecorationTheme(
      hintStyle: TextStyleExtension().bodyLarge.copyWith(
        color: AppColors.darkGrey,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkGrey, width: 2),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkGrey, width: 2),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkGrey, width: 2),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkGrey, width: 1),
      ),
      suffixIconColor: AppColors.darkGrey,
    );
  }
}