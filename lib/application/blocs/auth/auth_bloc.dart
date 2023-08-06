import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/events/events.dart';
import '../../../domain/services/auth_service.dart';
import '../../../utils/regexp/email_regexp.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authService) : super(const AuthState()) {
    on<_SetEmailEvent>(_setEmail);
    on<_SetPasswordEvent>(_setPassword);
    on<_SwitchObscuringPasswordEvent>(_switchObscuringPassword);
    on<_AuthenticateEvent>(_authenticate);

    on<_UserLoggedInEvent>(_logIn);
    on<_UserLoggedOutEvent>(_logOut);

    _eventSub = _authService.events.listen((event) {
      if (event is UserLoggedInEvent) {
      } else if (event is UserLoggedOutEvent) {}
    });
  }

  final AuthService _authService;
  StreamSubscription? _eventSub;

  @override
  Future<void> close() async {
    await _eventSub?.cancel();

    await super.close();
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
    if (!state.canAuthenticate) {
      return;
    }

    final email = state.email;
    final password = state.password;

    emit(state.copyWith(isLoading: true));

    try {
      await _authService.authenticate(email: email, password: password);
    } catch (e) {
      emit(state.copyWith(error: 'Ошибка'));
      emit(state.copyWith(error: ''));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _logIn(
    _UserLoggedInEvent event,
    Emitter<AuthState> emit,
  ) {}

  void _logOut(
    _UserLoggedOutEvent event,
    Emitter<AuthState> emit,
  ) {}
}
