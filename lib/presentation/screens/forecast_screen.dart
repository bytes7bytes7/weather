import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../themes/extensions/color_scheme_tx.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Assets.icons.location.svg(),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Архангельск, Россия',
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Assets.images.snow.image(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
