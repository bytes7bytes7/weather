import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../application/application.dart';


@LazySingleton(as: DateTimeStringProvider)
class ProdDateTimeStringProvider implements DateTimeStringProvider {
  const ProdDateTimeStringProvider();

  String get locale => Platform.localeName;

  @override
  String getDate(DateTime dateTime) {
    final dayDF = DateFormat('d MMMM', locale);

    return dayDF.format(dateTime);
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
    final timeDF = DateFormat('HH:mm', locale);

    return timeDF.format(dateTime);
  }
}
