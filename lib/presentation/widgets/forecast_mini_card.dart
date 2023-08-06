import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../themes/extensions/extensions.dart';

class ForecastMiniCard extends StatelessWidget {
  const ForecastMiniCard({
    super.key,
    required this.selected,
    required this.time,
    required this.degree,
    required this.iconPath,
    required this.onPressed,
  });

  final bool selected;
  final String time;
  final String degree;
  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardThemeTX = theme.extension<CardThemeTX>()!;

    return Theme(
      data: theme.copyWith(
        cardTheme: selected ? cardThemeTX.selected : cardThemeTX.unselected,
      ),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  time,
                  style: theme.textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 16,
                ),
                SvgPicture.asset(iconPath),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  degree,
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
