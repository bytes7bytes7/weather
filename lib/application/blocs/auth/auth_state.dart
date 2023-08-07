part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool initialized,
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default('') String email,
    bool? isEmailValid,
    @Default('') String password,
    @Default(true) bool obscurePassword,
  }) = _AuthState;

  const AuthState._();

  String? get emailError {
    if (isEmailValid != false) {
      return null;
    }

    return 'Невалидный email';
  }

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
