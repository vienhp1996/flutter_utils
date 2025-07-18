import 'package:flutter/material.dart';
import 'datetime_utils.dart';

List listHoliday = [
  {
    'id': 1,
    'name': 'tet-duong',
    'image': 'assets/images/home/tet/tet-duong.webp',
    'from_date': '2024-12-30',
    'to_date': '2025-01-02',
  },
  {
    'id': 2,
    'name': 'tet-am',
    'image': 'assets/images/home/tet/tet-am.webp',
    'from_date': '2025-01-25',
    'to_date': '2025-02-02',
  },
  {
    'id': 3,
    'name': '14-2',
    'image': 'assets/images/home/tet/14_2.webp',
    'from_date': '2025-02-13',
    'to_date': '2025-02-15',
  },
  {
    'id': 4,
    'name': '8-3',
    'image': 'assets/images/home/tet/8-3.webp',
    'from_date': '2025-03-06',
    'to_date': '2025-03-09',
  },
  {
    'id': 5,
    'name': '30-4',
    'image': 'assets/images/home/tet/30_4.webp',
    'from_date': '2025-04-29',
    'to_date': '2025-05-02',
  },
  {
    'id': 6,
    'name': '2-9',
    'image': 'assets/images/home/tet/2_9.webp',
    'from_date': '2025-09-01',
    'to_date': '2025-09-03',
  },
  {
    'id': 7,
    'name': '20/10',
    'image': 'assets/images/home/tet/20_10.webp',
    'from_date': '2025-10-17',
    'to_date': '2025-10-21',
  },
  {
    'id': 8,
    'name': 'hallowen',
    'image': 'assets/images/home/tet/hallowen.webp',
    'from_date': '2025-10-29',
    'to_date': '2025-11-01',
  },
  {
    'id': 9,
    'name': 'quan-doi-nhan-dan',
    'image': 'assets/images/home/tet/22_12.webp',
    'from_date': '2025-12-20',
    'to_date': '2025-12-23',
  },
  {
    'id': 10,
    'name': 'giang-sinh',
    'image': 'assets/images/home/tet/giang-sinh.webp',
    'from_date': '2025-12-23',
    'to_date': '2025-12-26',
  },
];

bool checkHoliday({required userInfo}) {
  List listClone = [...listHoliday];
  if (userInfo != null && userInfo['dob'] != null) {
    List list = userInfo['dob'].split('-');
    DateTime bd = convertServerDateToDate('${DateTime.now().year}-${list[1]}-${list[2]}');

    listClone.insert(0, {
      'id': 0,
      'name': 'sinh-nhat',
      'image': 'assets/images/home/tet/sinh-nhat.webp',
      'from_date': convertDateTimeToServeDate(bd),
      'to_date': convertDateTimeToServeDate(bd.add(const Duration(days: 1))),
    });
  }

  for (var element in listClone) {
    DateTime startHoliday = convertServerDateToDate(element['from_date']);
    DateTime endHoliday = convertServerDateToDate(element['to_date']);

    int now = DateTime.now().millisecondsSinceEpoch;
    int intStart = startHoliday.millisecondsSinceEpoch;
    int intEnd = endHoliday.millisecondsSinceEpoch;
    if (now > intStart && now < intEnd) {
      return true;
    }
  }

  return false;
}

AssetImage getHolidayBackgroundImage({required userInfo}) {
  List listClone = [...listHoliday];
  if (userInfo != null && userInfo['dob'] != null) {
    List list = userInfo['dob'].split('-');
    DateTime bd = convertServerDateToDate('${DateTime.now().year}-${list[1]}-${list[2]}');

    listClone.insert(0, {
      'id': 0,
      'name': 'sinh-nhat',
      'image': 'assets/images/home/tet/sinh-nhat.webp',
      'from_date': convertDateTimeToServeDate(bd),
      'to_date': convertDateTimeToServeDate(bd.add(const Duration(days: 1))),
    });
  }

  for (var element in listClone) {
    DateTime startHoliday = convertServerDateToDate(element['from_date']);
    DateTime endHoliday = convertServerDateToDate(element['to_date']);

    int now = DateTime.now().millisecondsSinceEpoch;
    int intStart = startHoliday.millisecondsSinceEpoch;
    int intEnd = endHoliday.millisecondsSinceEpoch;
    if (now > intStart && now < intEnd) {
      return AssetImage(element['image']);
    }
  }
  return const AssetImage('assets/images/default/morning.jpg');
}
