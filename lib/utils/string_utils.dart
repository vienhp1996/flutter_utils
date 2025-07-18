import 'package:flutter_utils/utils/convert_vietnam_text.dart';

bool validString(String? str) {
  return str != null && str.isNotEmpty && str != "";
}

String convertVietNamText(String? str) {
  if (!validString(str)) {
    return '';
  }
  return ConvertVnText().normalized(str!.toLowerCase().trim());
}

String getUrlParam(String? url, String paramName) {
  if (!validString(url)) {
    return "";
  }

  // Tìm vị trí dấu '?' trong URL
  int queryStart = url!.indexOf('?');
  if (queryStart == -1) {
    // Nếu không có phần query, trả về null
    return "";
  }

  // Lấy phần query sau dấu '?'
  String queryString = url.substring(queryStart + 1);

  // Tách các cặp key=value theo dấu '&'
  List<String> pairs = queryString.split('&');

  // Duyệt qua từng cặp key=value
  for (String pair in pairs) {
    // Tách key và value bằng dấu '='
    List<String> keyValue = pair.split('=');
    if (keyValue.isNotEmpty && keyValue[0] == paramName) {
      // Nếu tìm thấy key khớp, trả về value (nếu có)
      return keyValue.length > 1 ? keyValue[1] : "";
    }
  }

  // Nếu không tìm thấy tham số, trả về null
  return "";
}
