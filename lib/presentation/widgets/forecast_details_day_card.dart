import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../application/view_models/forecast_vm/forecast_vm.dart';
import '../../gen/assets.gen.dart';

class ForecastDetailsDayCard extends StatelessWidget {
  const ForecastDetailsDayCard({
    super.key,
    required this.forecast,
  });

  final ForecastVM forecast;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _ForecastParameter(
              iconPath: Assets.icons.wind.path,
              value: forecast.wind.speed,
              description: forecast.wind.direction,
            ),
            const SizedBox(
              height: 16,
            ),
            _ForecastParameter(
              iconPath: Assets.icons.humidity.path,
              value: forecast.humidityPercent,
              description: forecast.humidity,
            ),
          ],
        ),
      ),
    );
  }
}

class _ForecastParameter extends StatelessWidget {
  const _ForecastParameter({
    required this.iconPath,
    required this.value,
    required this.description,
  });

  final String iconPath;
  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            value,
            style: theme.textTheme.bodySmall,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            description,
            style: theme.textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
