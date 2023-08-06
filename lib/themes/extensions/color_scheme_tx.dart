import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.gradientPrimary,
    required this.gradientSecondary,
  });

  final Color gradientPrimary;
  final Color gradientSecondary;

  @override
  ThemeExtension<ColorSchemeTX> copyWith({
    Color? gradientPrimary,
    Color? gradientSecondary,
  }) {
    return ColorSchemeTX(
      gradientPrimary: gradientPrimary ?? this.gradientPrimary,
      gradientSecondary: gradientSecondary ?? this.gradientSecondary,
    );
  }

  @override
  ThemeExtension<ColorSchemeTX> lerp(
    covariant ThemeExtension<ColorSchemeTX>? other,
    double t,
  ) {
    if (other is! ColorSchemeTX) {
      return this;
    }

    return ColorSchemeTX(
      gradientPrimary: Color.lerp(
        gradientPrimary,
        other.gradientPrimary,
        t,
      )!,
      gradientSecondary: Color.lerp(
        gradientSecondary,
        other.gradientSecondary,
        t,
      )!,
    );
  }
}
