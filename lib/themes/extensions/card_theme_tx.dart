import 'package:flutter/material.dart';

class CardThemeTX extends ThemeExtension<CardThemeTX> {
  const CardThemeTX({
    required this.selected,
    required this.unselected,
  });

  final CardTheme selected;
  final CardTheme unselected;

  @override
  ThemeExtension<CardThemeTX> copyWith({
    CardTheme? selected,
    CardTheme? unselected,
  }) {
    return CardThemeTX(
      selected: selected ?? this.selected,
      unselected: unselected ?? this.unselected,
    );
  }

  @override
  ThemeExtension<CardThemeTX> lerp(
    covariant ThemeExtension<CardThemeTX>? other,
    double t,
  ) {
    if (other is! CardThemeTX) {
      return this;
    }

    return CardThemeTX(
      selected: CardTheme.lerp(
        selected,
        other.selected,
        t,
      ),
      unselected: CardTheme.lerp(
        unselected,
        other.unselected,
        t,
      ),
    );
  }
}
