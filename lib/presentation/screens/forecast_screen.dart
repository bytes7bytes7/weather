import 'package:flutter/material.dart';

import '../../application/view_models/view_models.dart';
import '../../gen/assets.gen.dart';
import '../../themes/extensions/extensions.dart';
import '../widgets/widgets.dart';

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
                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        theme.colorScheme.secondary,
                        theme.colorScheme.secondary.withOpacity(0),
                      ],
                      stops: const [0.01, 1],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Assets.images.snow.image(),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '28º',
                        style: theme.textTheme.displayLarge,
                      ),
                      Text(
                        'Гроза',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Макс: 31º Мин: 25º',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                ForecastDayCard(
                  onItemPressed: (index) {},
                  selectedForecastIndex: 1,
                  forecasts: List.generate(
                    4,
                    (index) {
                      return ForecastVM(
                        date: '',
                        time: '14:00',
                        humidity: 'Высокая влажность',
                        humidityPercent: '100%',
                        relativeDate: 'Сегодня',
                        temperature: const TemperatureVM(
                          current: '23º',
                          min: '17º',
                          max: '27º',
                        ),
                        weather: WeatherVM(
                          description: 'Гроза',
                          bigIconPath: Assets.images.clear.path,
                          smallIconPath: Assets.icons.clear.path,
                        ),
                        wind: const WindVM(
                          direction: 'Ветер северо-восточный',
                          speed: '2 м/с',
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ForecastDetailsDayCard(
                  forecast: ForecastVM(
                    date: '',
                    time: '14:00',
                    humidity: 'Высокая влажность',
                    humidityPercent: '100%',
                    relativeDate: 'Сегодня',
                    temperature: const TemperatureVM(
                      current: '23º',
                      min: '17º',
                      max: '27º',
                    ),
                    weather: WeatherVM(
                      description: 'Гроза',
                      bigIconPath: Assets.images.clear.path,
                      smallIconPath: Assets.icons.clear.path,
                    ),
                    wind: const WindVM(
                      direction: 'Ветер северо-восточный',
                      speed: '2 м/с',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
