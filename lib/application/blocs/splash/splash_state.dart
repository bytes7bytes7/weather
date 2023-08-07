part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(false) bool isInitialized,
    @Default('') String greeting,
  }) = _SplashState;
}
