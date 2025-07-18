import 'package:flutter/material.dart';
import 'package:flutter_utils/utils/string_utils.dart';
import 'package:intl/intl.dart';

convertTimeStampToDate(int timeStamp, [type]) {
  var dateToTimeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  if (type == 'full') {
    return DateFormat('dd/MM/yyyy HH:mm').format(dateToTimeStamp);
  }
  return DateFormat('dd/MM/yyyy').format(dateToTimeStamp);
}

convertTimeStampToDateTime(int timeStamp) {
  return DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
}

convertDateToDateTime(DateTime date) {
  return DateFormat('dd/MM/yyyy HH:mm').format(date);
}

convertVietNameDateToServerDate(String? date) {
  if (!validString(date)) {
    return '-';
  }
  List arrDate = date!.split('/');
  return '${arrDate[2]}-${arrDate[1]}-${arrDate[0]}';
}

convertDateToTime(DateTime date) {
  return DateFormat('HH:mm').format(date);
}

convertDateTimeToTimeStamp(DateTime date) {
  int timestamp = date.millisecondsSinceEpoch;
  return timestamp ~/ 1000;
}

vnDate(String? date) {
  if (date != null) {
    var arrDate = date.split('-');
    return '${arrDate[2]}/${arrDate[1]}/${arrDate[0]}';
  }
  return '';
}

convertStringDateToTimeStamp(String date) {
  var arrDate = date.split('/'); // dd/MM/yyyy
  var newDate = DateTime(int.parse(arrDate[2]), int.parse(arrDate[1]), int.parse(arrDate[0]));
  return (newDate.millisecondsSinceEpoch);
}

String convertTimeStampToVnDate(int timeStamp) {
  return convertDateTimeToVnDate(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));
}

String convertTimeStampToFullDate(int timeStamp) {
  return DateFormat('dd/MM/yyyy HH:mm').format(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));
}

String convertTimeStampToVnFullDate(int timeStamp) {
  return DateFormat('HH:mm dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000));
}

DateTime getFirstDateOfMonth(DateTime date) {
  int month = date.month;
  int year = date.year;
  return DateTime(year, month, 1);
}

DateTime getLastDateOfMonth(DateTime date) {
  int month = date.month;
  int year = date.year;
  DateTime firstDayOfNextMonth = DateTime(year, month + 1, 1);
  return firstDayOfNextMonth.add(const Duration(days: -1));
}

List<String> getDaysOfWeek(date) {
  var weekStart = getFirstDateOfTheWeek(date);
  List<String> arrDate = [];
  for (var i = 0; i <= 6; i++) {
    DateTime dateFull = weekStart.add(Duration(days: i));
    String date = DateFormat('yyyy-MM-dd').format(dateFull);
    arrDate.add(date);
  }
  return arrDate;
}

DateTime getFirstDateOfTheWeek(DateTime dateTime) {
  return dateTime.subtract(Duration(days: dateTime.weekday - 1));
}

DateTime getLastDateOfTheWeek(DateTime dateTime) {
  return dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
}

DateTime getDateOfNextWeek(DateTime dateTime) {
  return dateTime.add(const Duration(days: 7));
}

DateTime getDateOfPreviousWeek(DateTime dateTime) {
  return dateTime.subtract(const Duration(days: 7));
}

List<DateTime> getDaysInMonth(DateTime date) {
  DateTime firstDayThisMonth = DateTime(date.year, date.month, date.day);
  DateTime firstDayNextMonth = DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
  int totalDays = firstDayNextMonth.difference(firstDayThisMonth).inDays;
  return List<DateTime>.generate(totalDays, (i) => DateTime(date.year, date.month, i + 1));
}

isoWeekNumber(DateTime date) {
  int daysToAdd = DateTime.thursday - date.weekday;
  DateTime thursdayDate =
      daysToAdd > 0 ? date.add(Duration(days: daysToAdd)) : date.subtract(Duration(days: daysToAdd.abs()));
  int dayOfYearThursday = thursdayDate.difference(DateTime(thursdayDate.year, 1, 1)).inDays;
  return 1 + ((dayOfYearThursday - 1) / 7).floor();
}

String convertServerDateToVnDate(String? date) {
  if (!validString(date)) {
    return '';
  }
  String stringDate = '';
  if (date!.length > 10) {
    date = date.substring(0, 10);
  }
  List arrayDate = date.split('-');
  if (arrayDate.length == 3) {
    stringDate = '${arrayDate[2]}/${arrayDate[1]}/${arrayDate[0]}';
  }
  return stringDate;
}

DateTime convertServerDateToDate(String? date) {
  if (!validString(date)) {
    return DateTime.now();
  }
  if (date!.length > 10) {
    date = date.substring(0, 10);
  }
  List arrayDate = date.split('-');
  return DateTime(
    int.parse(arrayDate[0]),
    int.parse(arrayDate[1]),
    int.parse(arrayDate[2]),
  );
}

DateTime convertServerStringDateToDate(String date) {
  if (date.length > 10) {
    date = date.substring(0, 10);
  }
  List arrDate = date.split('-');
  DateTime newDate = DateTime(int.parse(arrDate[0]), int.parse(arrDate[1]), int.parse(arrDate[2]));
  return newDate;
}

String convertDateTimeToServeDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String convertDateTimeToVnDate(DateTime date) {
  return DateFormat('dd/MM/yyyy').format(date);
}

String convertDateTimeToDDMM(DateTime date) {
  return DateFormat('dd/MM').format(date);
}

int getWeekNumber(DateTime date) {
  return weekOfYear(date);
}

int weekOfYear(DateTime date) {
  DateTime monday = weekStart(date);
  DateTime first = weekYearStartDate(monday.year);

  int week = 1 + (monday.difference(first).inDays / 7).floor();

  if (week == 53 && DateTime(monday.year, 12, 31).weekday < 4) week = 1;

  return week;
}

DateTime weekStart(DateTime date) {
  DateTime monday = DateTime.utc(date.year, date.month, date.day);
  monday = monday.subtract(Duration(days: monday.weekday - 1));

  return monday;
}

DateTime weekYearStartDate(int year) {
  DateTime first = DateTime.utc(year, 1, 1);
  if (first.weekday > 4) first = first.add(Duration(days: 8 - first.weekday));

  return first;
}

TimeOfDay convertStringHoursToTimeOfDay(String s) =>
    TimeOfDay(hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));

List<DateTime> getDaysInBetween(DateTime startDate, DateTime endDate) {
  List<DateTime> days = [];
  for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
    days.add(startDate.add(Duration(days: i)));
  }
  return days;
}

String convertHermesDateToVnDate(String? date, {bool isShowHoursFirst = false}) {
  if (!validString(date)) {
    return '-';
  }
  List list = date!.split(' ');
  String str = list[0];
  String strDate = convertServerDateToVnDate(str);

  return "$strDate";
}

DateTime weekEnd(DateTime date) {
  DateTime sunday = DateTime.utc(date.year, date.month, date.day, 23, 59, 59, 999, 999999);
  sunday = sunday.add(Duration(days: 7 - sunday.weekday));

  return sunday;
}

DateTime getDateByWeekNumber(int weekNumber, int year, {bool end = true}) {
  DateTime sunday = DateTime(year, 1, (1 + (weekNumber - 1) * 7));
  for (int i = 0; i < 10; i++) {
    sunday = sunday.add(const Duration(days: -1));
    if (sunday.weekday == 7) {
      break;
    }
  }
  return end ? sunday : sunday.add(const Duration(days: -6));
}

bool isSameDate(DateTime date1, DateTime date2) {
  return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
}

bool isDayInBetween(DateTime selectedDate, DateTime fromDate, DateTime toDate) {
  List list = getDaysInBetween(fromDate, toDate);
  List<String> listStringDate = [];
  for (var element in list) {
    listStringDate.add(convertDateTimeToServeDate(element));
  }
  String date = convertDateTimeToServeDate(selectedDate);
  return listStringDate.contains(date);
}

DateTime getDayOfNextWeek(DateTime today) {
  return DateTime(today.year, today.month, today.day + 7);
}

String convertHermesDateTimeToVnDate(String? date, {bool isShowHoursFirst = false}) {
  if (!validString(date)) {
    return '-';
  }
  List list = date!.split(' ');
  String str = list[0];
  String strDate = convertServerDateToVnDate(str);

  if (isShowHoursFirst) {
    return "${list[1]} $strDate";
  }

  return "$strDate ${list[1]}";
}

DateTime sixMonthsAgo() {
  DateTime currentDate = DateTime.now();
  return DateTime(
    currentDate.year,
    currentDate.month - 6,
    currentDate.day,
  );
}

String convertDateTimeToHour(DateTime date) {
  return DateFormat('HH:mm').format(date);
}

bool showReviewIconAndMenu() {
  DateTime now = DateTime.now();
  if (now.year == 2025 && now.month == 1) {
    return true;
  }
  if (now.year == 2024 && (now.month == 12 || now.month == 11)) {
    return true;
  }
  return false;
}

DateTime getFirstDayOfNextMonth(DateTime date) {
  return DateTime(date.year, date.month + 1, 1);
}

DateTime combineDateTime(DateTime date, String timeLimit) {
  // Tách giờ và phút từ timeLimit
  List<String> parts = timeLimit.split(':');
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]);

  // Tạo DateTime mới bằng cách kết hợp ngày từ date và giờ, phút từ timeLimit
  DateTime combinedDateTime = DateTime(
    date.year,
    date.month,
    date.day,
    hour,
    minute,
  );
  return combinedDateTime;
}
