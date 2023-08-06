part of 'forecast_bloc.dart';

@freezed
class ForecastState with _$ForecastState {
  const factory ForecastState({
    @Default(false) bool isLoading,
    @Default([]) List<ForecastVM> forecasts,
    @Default(0) int selectedForecastIndex,
    LocationVM? location,
  }) = _ForecastState;
}
