import 'package:intl/intl.dart';

/// Singleton class for the date time format and other utility
class DateTimeUtils {
  DateTimeUtils._();

  static String formatDateTimeFromString(String strDateTime) {
    return DateFormat('mm:hha, EEEE d MMM, yyyy')
        .format(DateTime.parse(strDateTime));
  }
}