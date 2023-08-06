import 'dart:async';

import 'package:injectable/injectable.dart';

import '../events/events.dart';
import '../repositories/auth_repository.dart';

@singleton
class AuthService {
  AuthService(this._authRepository);

  final AuthRepository _authRepository;

  final _eventController = StreamController<DomainEvent>.broadcast();

  Stream<DomainEvent> get events => _eventController.stream;

  Future<void> dispose() async {
    await _eventController.close();
  }

  Future<void> authenticate({
    required String email,
    required String password,
  }) async {
    // TODO: handle errors
    try {
      await _authRepository.logIn(email: email, password: password);

      _eventController.add(const UserLoggedInEvent());
    } catch (e) {
      await _authRepository.register(email: email, password: password);

      _eventController.add(const UserLoggedInEvent());
    }
  }
}
