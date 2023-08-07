import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/account.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../utils/mapper.dart';
import '../data_sources/data_sources.dart';

@test
@prod
@LazySingleton(as: AuthRepository)
class ProdAuthRepository implements AuthRepository {
  const ProdAuthRepository(this._firebaseDataSource, this._accountMapper);

  final FirebaseDataSource _firebaseDataSource;
  final Mapper<User, Account> _accountMapper;

  @override
  Stream<Account?> get onAccountChanged => _firebaseDataSource
      .currentUser()
      .map((e) => e != null ? _accountMapper.map(e) : null);

  @override
  Future<Account?> getAccount() async {
    final user = await _firebaseDataSource.getCurrentUser();
    if (user == null) {
      return null;
    }

    return _accountMapper.map(user);
  }

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
