abstract class DateFormat{
  static String dateFormatDay(DateTime dateTime){
    return "${dateTime.year}-${dateTime.month}-${dateTime.day}";
  }
  static String dateFormatDayHour(DateTime dateTime){
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}";
  }
}