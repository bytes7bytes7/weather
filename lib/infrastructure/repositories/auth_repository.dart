import 'package:injectable/injectable.dart';

import '../../domain/repositories/auth_repository.dart';
import '../data_sources/data_sources.dart';

@test
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

@prod
@LazySingleton(as: AuthRepository)
class ProdAuthRepository implements AuthRepository {
  const ProdAuthRepository(this._firebaseDataSource);

  final FirebaseDataSource _firebaseDataSource;

  @override
  Future<void> logIn({
    required String email,
    required String password,
  }) {
    return _firebaseDataSource.logIn(email: email, password: password);
  }

  @override
  Future<void> register({
    required String email,
    required String password,
  }) {
    return _firebaseDataSource.register(email: email, password: password);
  }
}
