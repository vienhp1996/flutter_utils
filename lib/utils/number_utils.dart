import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String moneyFormatAdvance(price, [showUnit = true]) {
  try {
    if (price != null) {
      var priceAfter = price;
      if (price is double || price is int) {
        priceAfter = '$price';
      }

      var find = priceAfter.indexOf('.');
      if (find >= 0) {
        priceAfter = priceAfter.substring(0, find);
      }

      if (priceAfter.length > 2) {
        var value = priceAfter;
        value = value.replaceAll(RegExp(r'\D'), '');
        value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
        if (showUnit) {
          return '$value đ';
        }
        return value.toString();
      } else {
        if (showUnit) {
          return '$priceAfter đ';
        }
        return '$priceAfter';
      }
    } else {
      if (showUnit) {
        return '0 đ';
      }
      return '0';
    }
  } catch (e) {
    return price.toString();
  }
}

double convertTimeOfDayToDouble(TimeOfDay myTime) => myTime.hour + myTime.minute / 60.0;

String formatNumber(dynamic input) {
  try {
    if (input != null) {
      // Chuyển đổi input sang số nếu cần
      num number;
      if (input is num) {
        number = input;
      } else if (input is String) {
        number = num.parse(input);
      } else {
        return input.toString();
      }

      // Chọn định dạng dựa trên số nguyên hay thập phân
      if (number is int || number == number.toInt()) {
        final NumberFormat formatter = NumberFormat("#,###", "en_US");
        return formatter.format(number);
      } else {
        final NumberFormat formatter = NumberFormat("#,##0.##", "en_US");
        return formatter.format(number);
      }
    }

    return '';
  } catch (e) {
    // Xử lý lỗi
    print("Error formatting currency: $e");
    return input.toString();
  }
}

bool isNumeric(String? string) {
  if (string == null || string.isEmpty) {
    return false;
  }
  final number = num.tryParse(string);
  if (number == null) {
    return false;
  }
  return true;
}
