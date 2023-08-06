import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../view_models/view_models.dart';

part 'forecast_event.dart';

part 'forecast_state.dart';

part 'forecast_bloc.freezed.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastBloc() : super(const ForecastState()) {
    on<ForecastEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
