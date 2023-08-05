abstract class AuthRepository {
  const AuthRepository();

  Future<void> signUp({required String email, required String password});

  Future<void> logIn({required String email, required String password});
}

class TestAuthRepository implements AuthRepository {
  const TestAuthRepository();

  @override
  Future<void> logIn({required String email, required String password}) {
    return Future.delayed(const Duration(seconds: 1), () {});
  }

  @override
  Future<void> signUp({required String email, required String password}) {
    return Future.delayed(const Duration(seconds: 1), () {});
  }
}
