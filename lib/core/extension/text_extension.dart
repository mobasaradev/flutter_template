import 'package:flutter/material.dart';

@immutable
class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  const TextStyleExtension();

  // Headlines
  TextStyle get headlineLarge =>
      const TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  TextStyle get headlineMedium =>
      const TextStyle(fontSize: 26, fontWeight: FontWeight.w600);
  TextStyle get headlineSmall =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.w600);

  // Titles
  TextStyle get titleLarge =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  TextStyle get titleMedium =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  TextStyle get titleSmall =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  // Body
  TextStyle get bodyLarge =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  TextStyle get bodyMedium =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  TextStyle get bodySmall =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  // Labels
  TextStyle get labelLarge =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  TextStyle get labelMedium =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
  TextStyle get labelSmall =>
      const TextStyle(fontSize: 10, fontWeight: FontWeight.w500);

  // Captions
  TextStyle get caption =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  @override
  ThemeExtension<TextStyleExtension> copyWith() => const TextStyleExtension();

  @override
  ThemeExtension<TextStyleExtension> lerp(
    covariant ThemeExtension<TextStyleExtension>? other,
    double t,
  ) => const TextStyleExtension();
}
