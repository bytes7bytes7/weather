import 'dart:async';

import 'package:injectable/injectable.dart';

import '../entities/account.dart';
import '../events/events.dart';
import '../exceptions/exceptions.dart';
import '../repositories/auth_repository.dart';

@singleton
class AuthService {
  AuthService(this._authRepository);

  final AuthRepository _authRepository;

  final _eventController = StreamController<DomainEvent>.broadcast();
  StreamSubscription? _accountSub;

  Stream<DomainEvent> get events => _eventController.stream;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _accountSub = _authRepository.onAccountChanged.listen(_updateAccount);
  }

  @disposeMethod
  Future<void> dispose() async {
    await _accountSub?.cancel();

    await _eventController.close();
  }

  Future<void> checkIfIsLoggedIn() async {
    final account = await _authRepository.getAccount();

    _updateAccount(account);
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
      if (e is UserNotFoundException) {
        await _authRepository.register(email: email, password: password);

        _eventController.add(const UserLoggedInEvent());
      }

      rethrow;
    }
  }

  void _updateAccount(Account? account) {
    if (account != null) {
      _eventController.add(const UserLoggedInEvent());
    } else {
      _eventController.add(const UserLoggedOutEvent());
    }
  }
}
