import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<_SetEmailEvent>(_setEmail);
    on<_SetPasswordEvent>(_setPassword);
    on<_SwitchObscuringPasswordEvent>(_switchObscuringPassword);
    on<_AuthenticateEvent>(_authenticate);
  }

  void _setEmail(
    _SetEmailEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _setPassword(
    _SetPasswordEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _switchObscuringPassword(
    _SwitchObscuringPasswordEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        obscurePassword: !state.obscurePassword,
      ),
    );
  }

  Future<void> _authenticate(
    _AuthenticateEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {} catch (e) {
      emit(state.copyWith(error: 'Ошибка'));
      emit(state.copyWith(error: ''));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}
