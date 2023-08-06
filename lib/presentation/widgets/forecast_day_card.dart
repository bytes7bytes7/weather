import 'package:flutter/material.dart';

import '../../application/view_models/forecast_vm/forecast_vm.dart';
import 'forecast_mini_card.dart';

const _paddingA = 16.0;

class ForecastDayCard extends StatelessWidget {
  const ForecastDayCard({
    super.key,
    required this.forecasts,
    required this.selectedForecastIndex,
    required this.onItemPressed,
  });

  final List<ForecastVM> forecasts;
  final int selectedForecastIndex;
  final void Function(int)? onItemPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.background.withOpacity(0.2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(_paddingA),
                child: Text(
                  'Сегодня',
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(_paddingA),
                child: Text(
                  '20 марта',
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(_paddingA),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                forecasts.length,
                (index) {
                  final forecast = forecasts[index];

                  return ForecastMiniCard(
                    selected: index == selectedForecastIndex,
                    time: forecast.time,
                    degree: forecast.temperature.current,
                    iconPath: forecast.weather.smallIconPath,
                    onPressed: onItemPressed != null
                        ? () {
                            onItemPressed?.call(index);
                          }
                        : null,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
