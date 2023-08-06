abstract class DateTimeStringProvider {
  const DateTimeStringProvider();

  String getRelativeToNow(DateTime dateTime);

  String getTime(DateTime dateTime);

  String getDate(DateTime dateTime);
}
