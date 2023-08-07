import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../providers/date_time_provider.dart';
import '../../providers/splash_string_provider.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(
    this._stringProvider,
    this._dateTimeProvider,
  ) : super(const SplashState()) {
    on<_InitEvent>(_init);
  }

  final SplashStringProvider _stringProvider;
  final DateTimeProvider _dateTimeProvider;

  Future<void> _init(
    _InitEvent event,
    Emitter<SplashState> emit,
  ) async {
    if (state.isInitialized) {
      return;
    }

    final now = _dateTimeProvider.now();
    final greeting = _stringProvider.getGreeting(now);
    emit(state.copyWith(greeting: greeting));

    await Future.delayed(const Duration(seconds: 3));

    emit(state.copyWith(isInitialized: true));
  }
}
