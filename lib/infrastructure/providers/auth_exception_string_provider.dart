import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@LazySingleton(as: AuthExceptionStringProvider)
class ProdAuthExceptionStringProvider implements AuthExceptionStringProvider {
  const ProdAuthExceptionStringProvider();

  @override
  String get emailAlreadyInUse => 'На данную почту уже зарегистрирован аккаунт';

  @override
  String get invalidEmail => 'Невалидная почта';

  @override
  String get operationNotAllowed => 'Операция не разрешена';

  @override
  String get userDisabled => 'Пользователь неактивирован';

  @override
  String get userNotFound => 'Пользователь не найден';

  @override
  String get weakPassword => 'Слабый пароль';

  @override
  String get wrongCredentials => 'Неверные логин и/или пароль';

  @override
  String get tooManyReq => 'Слишком много запросов. Повторите попытку позже';

  @override
  String get canNotLoad =>
      'Не удалось войти. Проверьте подключение к интернету';
}
