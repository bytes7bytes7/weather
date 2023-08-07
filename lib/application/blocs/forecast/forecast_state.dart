part of 'forecast_bloc.dart';

@freezed
class ForecastState with _$ForecastState {
  const factory ForecastState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default([]) List<ForecastVM> forecasts,
    @Default(0) int selectedForecastIndex,
    LocationVM? location,
  }) = _ForecastState;

  const ForecastState._();

  ForecastVM? get selectedForecast {
    final list = List.of(forecasts);
    if (list.isEmpty) {
      return null;
    }

    final index = selectedForecastIndex;
    if (index < 0 || index >= list.length) {
      return null;
    }

    return list[index];
  }
}
