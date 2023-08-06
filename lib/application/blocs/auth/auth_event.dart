part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.setEmail({required String email}) = _SetEmailEvent;

  const factory AuthEvent.setPassword({required String password}) =
      _SetPasswordEvent;

  const factory AuthEvent.switchObscuringPassword() =
      _SwitchObscuringPasswordEvent;

  const factory AuthEvent.authenticate() = _AuthenticateEvent;
}
