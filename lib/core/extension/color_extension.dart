import 'package:flutter/material.dart';

@immutable
class ColorExtension extends ThemeExtension<ColorExtension> {
  final Color primary;
  final Color success;
  final Color warning;
  final Color error;
  final Color black;
  final Color white;
  final Color grey;
  final Color lightGrey;
  final Color darkGrey;
  final Color transparent;
  final Color lightScaffold;
  final Color darkScaffold;

  const ColorExtension({
    required this.primary,
    required this.success,
    required this.warning,
    required this.error,
    required this.black,
    required this.white,
    required this.grey,
    required this.lightGrey,
    required this.darkGrey,
    required this.transparent,
    required this.lightScaffold,
    required this.darkScaffold,
  });

  @override
  ColorExtension copyWith({
    Color? primary,
    Color? success,
    Color? warning,
    Color? error,
    Color? black,
    Color? white,
    Color? grey,
    Color? lightGrey,
    Color? darkGrey,
    Color? transparent,
    Color? lightScaffold,
    Color? darkScaffold,
  }) {
    return ColorExtension(
      primary: primary ?? this.primary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      black: black ?? this.black,
      white: white ?? this.white,
      grey: grey ?? this.grey,
      lightGrey: lightGrey ?? this.lightGrey,
      darkGrey: darkGrey ?? this.darkGrey,
      transparent: transparent ?? this.transparent,
      lightScaffold: lightScaffold ?? this.lightScaffold,
      darkScaffold: darkScaffold ?? this.darkScaffold,
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
      error: Color.lerp(error, other.error, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      darkGrey: Color.lerp(darkGrey, other.darkGrey, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
      lightScaffold: Color.lerp(lightScaffold, other.lightScaffold, t)!,
      darkScaffold: Color.lerp(darkScaffold, other.darkScaffold, t)!,
    );
  }
}
