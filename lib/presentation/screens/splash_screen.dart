import 'package:flutter/material.dart';

import '../../themes/extensions/color_scheme_tx.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorSchemeTX.gradientPrimary,
            colorSchemeTX.gradientSecondary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 43,
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'WEATHER\nSERVICE',
                style: theme.textTheme.displayMedium,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Text(
              'dawn is coming soon',
              style: theme.textTheme.displaySmall,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
