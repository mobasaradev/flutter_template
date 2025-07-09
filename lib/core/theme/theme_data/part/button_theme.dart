part of '../theme_data.dart';

class _ElevatedButtonLightThemeData {
  ElevatedButtonThemeData call() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.primary, width: 2),
        ),
        foregroundColor: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        minimumSize: const Size(double.infinity, 48),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}


class _ElevatedButtonDarkThemeData {
  ElevatedButtonThemeData call() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.primary, width: 2),
        ),
        foregroundColor: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        minimumSize: const Size(double.infinity, 48),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}

