part of 'forecast_bloc.dart';

@freezed
class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.load() = _LoadEvent;

  const factory ForecastEvent.refresh() = _RefreshEvent;

  const factory ForecastEvent.selectForecast({required int index}) =
      _SelectForecastEvent;

  const factory ForecastEvent.logOut() = _LogOutEvent;
}
