import 'package:intl/intl.dart';

final class TimeAgo {
  static String timeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    DateTime notificationDate =
        DateFormat('dd-MM-yyyy h:mma').parse(dateString);
    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);
    var formatter = DateFormat('dd-MM-yyyy');
    if (difference.inDays > 8) {
      return formatter.format(notificationDate);
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  static String getDateForSaveImage() {
    var date = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyyhmma');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String getDateForCheckDownloadLimit() {
    var date = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String getDateWithFormat(DateTime dates) {
    var formatter = DateFormat('dd-MM-yyyy h:mma');
    String formatted = formatter.format(dates);
    return formatted;
  }

  static String getJoinedDateFormat(DateTime dates) {
    var formatter = DateFormat('dd MMM yyyy');
    String formatted = formatter.format(dates);
    return formatted;
  }

  static String? getOnlyDateFormat(DateTime date,
      {String? format = 'MM-dd-yyyy hh:mm'}) {
    var formatter = DateFormat(format);
    return formatter.format(date); //DateTime.parse(formatter.format(date));
  }

  static DateTime? getOnlyDateForm(DateTime date,
      {String? format = 'yyyy-MMM-dd'}) {
    var formatter = DateFormat(format);
    return DateTime.parse(formatter.format(date));
  }

  static String? getOnlyTImeFormat(DateTime date,
      {String? format = 'hh:mm aaa'}) {
    var formatter = DateFormat(format);
    return formatter.format(date); //DateTime.parse(formatter.format(date));
  }

  static bool getPostDate(String firstDate) {
    var currentDtes = DateTime.now();
    var formatter = DateFormat('dd MMM');

    // var date1 = DateTime.parse(formatter.format(currentDtes));
    var inputDate = DateTime.parse(currentDtes.toString());

    var date1 = formatter.format(inputDate);
    //var date2 = DateFormat('dd MMM').parse(firstDate);

    //var date2 = DateTime.parse(formatter.format(firstDate));
    if (date1 == firstDate) {
      return true;
    }
    return false;
  }

  static String? getDateFromMiliseconds(String? miliseconds) {
    var timestamp = int.tryParse(miliseconds ?? '000'); // timestamp in seconds
    final DateTime date =
        DateTime.fromMillisecondsSinceEpoch((timestamp ?? 000));
    var dateformat = DateFormat('yyyy-MM-dd hh:mm:ss').format(date).toString();
    return dateformat;
  }

  static int getMiliseconds() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static int getMiliSecondsFromDate(DateTime? date) {
    return date?.microsecondsSinceEpoch ?? 0;
  }

  static String getMonthAndYear({int? increase}) {
    var newDate = DateTime.now();
    var newDates = DateTime(newDate.year, newDate.month + (increase ?? 0), 1);
    var dateString = DateFormat('MMM yyyy').format(newDates);
    return dateString;
  }

  static List<String> getAssesmentYear() {
    List<String> array = [];
    var newDate = DateTime.now();
    //(i - 2) its show  upper year for example current year 2023-24 then its show 2024-25 this row too.
    for (int i = 15; i > 0; i--) {
      var firstYear =
          DateFormat('yyyy').format(DateTime(newDate.year - (i - 2), 1, 1));
      var secondYear =
          DateFormat('yy').format(DateTime((newDate.year - (i - 2)) + 1, 1, 1));
      array.add('$firstYear-$secondYear');
    }
    return array.reversed.toList();
  }

  static String getFinancialStartMonthAndYear({int? increase}) {
    var newDate = DateTime.now();
    var newDates = DateTime(newDate.year, (increase ?? 0), 1);
    var dateString = DateFormat('MMM yyyy').format(newDates);
    return dateString;
  }

  static String getYear(String dateStr) {
    DateTime date1 = DateFormat('MMM yyyy').parse(dateStr);
    var newDate = DateTime(date1.year);
    return DateFormat('yyyy').format(newDate);
  }

  static String getMonth(String dateStr) {
    DateTime date1 = DateFormat('MMM yyyy').parse(dateStr);
    var newDate = DateTime(date1.year, date1.month, 1);
    return DateFormat('MMM').format(newDate);
  }

  static String getMonthFromNumber(int monthNumber, {required String dateStr}) {
    DateTime date1 = DateFormat('MMM yyyy').parse(dateStr);
    var newDate = DateTime(date1.year, monthNumber, 1);
    return DateFormat('MMM').format(newDate);
  }

  static bool compareDates(String date1Str, String date2Str) {
    DateTime date1 = DateFormat('MMM yyyy').parse(date1Str);
    DateTime date2 = DateFormat('MMM yyyy').parse(date2Str);
    if (date1.compareTo(date2) < 0) {
      return false;
    } else if (date1.compareTo(date2) == 0) {
      return true;
    } else {
      return false;
    }
  }

  static int getMonthInNumber(String dateStr) {
    DateTime date = DateFormat('MMM yyyy').parse(dateStr);
    return date.month;
  }

  static DateTime getCoinDate(String dateStr) {
    DateTime date = DateFormat('yyyy-MM-dd hh:mm:ss').parse(dateStr);
    return date;
  }

  static bool isDateChanged(DateTime previousDate, DateTime currentDate) {
    String formattedPreviousDate = DateFormat('yyyy-MM-dd').format(previousDate);
    String formattedCurrentDate = DateFormat('yyyy-MM-dd').format(currentDate);

    return formattedPreviousDate != formattedCurrentDate;
  }

}
