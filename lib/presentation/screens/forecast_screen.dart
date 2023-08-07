import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../application/blocs/forecast/forecast_bloc.dart';
import '../../gen/assets.gen.dart';
import '../../themes/extensions/extensions.dart';
import '../widgets/widgets.dart';

const _paddingA = 24.0;

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return BlocProvider<ForecastBloc>(
      create: (context) =>
          GetIt.instance.get<ForecastBloc>()..add(const ForecastEvent.load()),
      child: DecoratedBox(
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return _Body(
                  maxHeight: constraints.maxHeight,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.maxHeight,
  });

  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaffoldMsg = ScaffoldMessenger.of(context);
    final bloc = context.read<ForecastBloc>();
    final height = maxHeight - 2 * _paddingA;

    return BlocConsumer<ForecastBloc, ForecastState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          scaffoldMsg.showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Padding(
            padding: EdgeInsets.all(_paddingA),
            child: Center(
              child: LoadingIndicator(),
            ),
          );
        }

        final forecast = state.selectedForecast;
        if (forecast == null) {
          return RefreshIndicator(
            onRefresh: () async {
              bloc.add(const ForecastEvent.refresh());
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(_paddingA),
              child: SizedBox(
                height: height,
                child: const Center(
                  child: Text('Нет данных'),
                ),
              ),
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            bloc.add(const ForecastEvent.refresh());
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(_paddingA),
            child: SizedBox(
              height: height,
              child: Column(
                children: [
                  Row(
                    children: [
                      Assets.icons.location.svg(),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        state.location,
                        style: theme.textTheme.titleSmall,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          bloc.add(const ForecastEvent.logOut());
                        },
                        icon: const Icon(Icons.logout),
                      ),
                    ],
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
                      child: Image.asset(forecast.weather.bigIconPath),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          forecast.temperature.current,
                          style: theme.textTheme.displayLarge,
                        ),
                        Text(
                          forecast.weather.description,
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          forecast.temperature.minMax,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  ForecastDayCard(
                    onItemPressed: (index) {
                      bloc.add(ForecastEvent.selectForecast(index: index));
                    },
                    selectedForecastIndex: state.selectedForecastIndex,
                    forecasts: state.forecasts,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ForecastDetailsDayCard(
                    forecast: forecast,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
