import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/account.dart';
import '../../utils/mapper.dart';

@LazySingleton(as: Mapper<User, Account>)
class UserToAccountMapper extends Mapper<User, Account> {
  const UserToAccountMapper();

  @override
  Account map(User item) {
    return Account(
      id: item.uid,
      email: item.email!,
    );
  }
}
