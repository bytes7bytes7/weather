import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../application/application.dart';

final _dayDF = DateFormat('d MMMM');
final _timeDF = DateFormat('HH:mm');

@LazySingleton(as: DateTimeStringProvider)
class ProdDateTimeStringProvider implements DateTimeStringProvider {
  const ProdDateTimeStringProvider();

  @override
  String getDate(DateTime dateTime) {
    return _dayDF.format(dateTime);
  }

  @override
  String getRelativeToNow(DateTime dateTime) {
    final thisDay = DateTime(dateTime.year, dateTime.month, dateTime.day);

    final now = DateTime.now();

    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    if (thisDay == yesterday) {
      return 'Вчера';
    }

    if (thisDay == today) {
      return 'Сегодня';
    }

    if (thisDay == tomorrow) {
      return 'Завтра';
    }

    return '';
  }

  @override
  String getTime(DateTime dateTime) {
    return _timeDF.format(dateTime);
  }
}
