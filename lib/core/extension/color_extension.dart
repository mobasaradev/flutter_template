import 'package:flutter/material.dart';

@immutable
class ColorExtension extends ThemeExtension<ColorExtension> {
  final Color primary;
  final Color success;
  final Color warning;

  const ColorExtension({
    required this.primary,
    required this.success,
    required this.warning,
  });

  @override
  ColorExtension copyWith({Color? primary, Color? success, Color? warning}) {
    return ColorExtension(
      primary: primary ?? this.primary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
    ThemeExtension<ColorExtension>? other,
    double t,
  ) {
    if (other is! ColorExtension) return this;
    return ColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }
}
