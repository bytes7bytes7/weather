import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/events/events.dart';
import '../../../domain/exceptions/exceptions.dart';
import '../../../domain/services/auth_service.dart';
import '../../../utils/regexp/email_regexp.dart';
import '../../coordinators/auth_coordinator.dart';
import '../../providers/auth_exception_string_provider.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._authService,
    this._authCoordinator,
    this._exceptionStringProvider,
  ) : super(const AuthState()) {
    on<_InitEvent>(_init);
    on<_SetEmailEvent>(_setEmail);
    on<_SetPasswordEvent>(_setPassword);
    on<_SwitchObscuringPasswordEvent>(_switchObscuringPassword);
    on<_AuthenticateEvent>(_authenticate);

    on<_UserLoggedInEvent>(_logIn);
    on<_UserLoggedOutEvent>(_logOut);

    _eventSub = _authService.events.listen((event) {
      if (event is UserLoggedInEvent) {
        add(const _UserLoggedInEvent());
      } else if (event is UserLoggedOutEvent) {
        add(const _UserLoggedOutEvent());
      }
    });
  }

  final AuthService _authService;
  final AuthCoordinator _authCoordinator;
  final AuthExceptionStringProvider _exceptionStringProvider;
  StreamSubscription? _eventSub;

  @override
  Future<void> close() async {
    await _eventSub?.cancel();

    await super.close();
  }

  Future<void> _init(
    _InitEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _authService.checkIfIsLoggedIn();
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
    } on EmailAlreadyInUseException {
      emit(state.copyWith(error: _exceptionStringProvider.emailAlreadyInUse));
    } on InvalidEmailException {
      emit(state.copyWith(error: _exceptionStringProvider.invalidEmail));
    } on OperationNotAllowedException {
      emit(state.copyWith(error: _exceptionStringProvider.operationNotAllowed));
    } on UnknownException {
      emit(state.copyWith(error: _exceptionStringProvider.unknown));
    } on UserDisabledException {
      emit(state.copyWith(error: _exceptionStringProvider.userDisabled));
    } on UserNotFoundException {
      emit(state.copyWith(error: _exceptionStringProvider.userNotFound));
    } on WeakPasswordException {
      emit(state.copyWith(error: _exceptionStringProvider.weakPassword));
    } on WrongCredentialsException {
      emit(state.copyWith(error: _exceptionStringProvider.wrongCredentials));
    } on TooManyRequestsException {
      emit(state.copyWith(error: _exceptionStringProvider.tooManyReq));
    } catch (e) {
      emit(state.copyWith(error: _exceptionStringProvider.unknown));
    } finally {
      emit(state.copyWith(isLoading: false, error: ''));
    }
  }

  void _logIn(
    _UserLoggedInEvent event,
    Emitter<AuthState> emit,
  ) {
    _authCoordinator.onLoggedIn();
  }

  void _logOut(
    _UserLoggedOutEvent event,
    Emitter<AuthState> emit,
  ) {
    _authCoordinator.onLoggedOut();
  }
}
