part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.setEmail({required String email}) = _SetEmailEvent;

  const factory AuthEvent.setPassword({required String password}) =
      _SetPasswordEvent;

  const factory AuthEvent.switchObscuringPassword() =
      _SwitchObscuringPasswordEvent;

  const factory AuthEvent.authenticate() = _AuthenticateEvent;
}

class _UserLoggedInEvent extends AuthEvent {
  const _UserLoggedInEvent() : super._();
}

class _UserLoggedOutEvent extends AuthEvent {
  const _UserLoggedOutEvent() : super._();
}
