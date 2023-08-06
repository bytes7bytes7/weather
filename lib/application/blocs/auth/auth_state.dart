part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
  }) = _AuthState;
}
