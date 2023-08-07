import '../entities/account.dart';

abstract class AuthRepository {
  const AuthRepository();

  Stream<Account?> get onAccountChanged;

  Future<Account?> getAccount();

  Future<void> register({required String email, required String password});

  Future<void> logIn({required String email, required String password});
}
