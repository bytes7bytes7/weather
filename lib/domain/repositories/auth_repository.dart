abstract class AuthRepository {
  const AuthRepository();

  Future<void> register({required String email, required String password});

  Future<void> logIn({required String email, required String password});
}
