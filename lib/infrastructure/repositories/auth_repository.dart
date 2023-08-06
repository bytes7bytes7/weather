import 'package:injectable/injectable.dart';

import '../../domain/repositories/auth_repository.dart';

@test
@prod
@LazySingleton(as: AuthRepository)
class TestAuthRepository implements AuthRepository {
  const TestAuthRepository();

  @override
  Future<void> logIn({required String email, required String password}) {
    return Future.delayed(const Duration(seconds: 1), () {});
  }

  @override
  Future<void> register({required String email, required String password}) {
    return Future.delayed(const Duration(seconds: 1), () {});
  }
}