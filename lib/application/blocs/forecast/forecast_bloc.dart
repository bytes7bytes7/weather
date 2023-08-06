import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/services/forecast_service.dart';
import '../../../domain/value_objects/forecast.dart';
import '../../../utils/mapper.dart';
import '../../view_models/view_models.dart';

part 'forecast_event.dart';

part 'forecast_state.dart';

part 'forecast_bloc.freezed.dart';

@injectable
class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastBloc(
    this._forecastService,
    this._forecastMapper,
  ) : super(const ForecastState()) {
    on<_LoadEvent>(_load);
    on<_RefreshEvent>(_refresh);
    on<_SelectForecastEvent>(_selectForecast);
  }

  final ForecastService _forecastService;
  final Mapper<Forecast, ForecastVM> _forecastMapper;

  Future<void> _load(
    _LoadEvent event,
    Emitter<ForecastState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final forecast = await _forecastService.getForecastForMyLocation();

      emit(state.copyWith(forecasts: _forecastMapper.mapList(forecast)));
    } catch (e) {
      emit(state.copyWith(error: 'Ошибка'));
      emit(state.copyWith(error: ''));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _refresh(
    _RefreshEvent event,
    Emitter<ForecastState> emit,
  ) {
    add(const _LoadEvent());
  }

  void _selectForecast(
    _SelectForecastEvent event,
    Emitter<ForecastState> emit,
  ) {
    final forecasts = List.of(state.forecasts);

    if (event.index < 0 || event.index >= forecasts.length) {
      return;
    }

    emit(state.copyWith(selectedForecastIndex: event.index));
  }
}
