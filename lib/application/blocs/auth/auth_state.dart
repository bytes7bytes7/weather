part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool initialized,
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
  }) = _AuthState;

  const AuthState._();

  bool get canAuthenticate {
    if (isLoading) {
      return false;
    }

    final e = email;
    final p = password;

    if (!emailRegexp.hasMatch(e)) {
      return false;
    }

    if (p.isEmpty) {
      return false;
    }

    return true;
  }
}
