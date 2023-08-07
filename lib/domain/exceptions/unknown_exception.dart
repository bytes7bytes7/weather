import 'domain_exception.dart';

class UnknownException extends DomainException {
  const UnknownException(this.message);

  final String message;
}
