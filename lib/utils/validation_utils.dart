import 'string_utils.dart';

bool validateBankAccount(String? str) {
  if (!validString(str)) {
    return false;
  }
  RegExp regex = RegExp(r'^[a-zA-Z0-9]+$');
  return regex.hasMatch(str!);
}

bool validateEmail(String value) {
  // không chứa @, .
  if (!value.contains("@") || !value.contains(".")) {
    return false;
  }

  List list = value.split("@");
  if (list.length > 2) {
    return false;
  }

  String left = list[0];
  // không được chứa các ký tự sau
  RegExp rexSpecialCharacter = RegExp(
    r"^[^<!#$%?^/|'&*()+>:{}]*$",
    caseSensitive: false,
    multiLine: false,
  );

  // phải có ít nhất 1 chữ, có thể chứa dấu chấm
  // RegExp rexCharacter = RegExp(
  //   r"^(?=.*[a-zA-Z])([a-zA-Z0-9._]+)$",
  //   caseSensitive: false,
  //   multiLine: false,
  // );

  // bool result = rexSpecialCharacter.hasMatch(left) && rexCharacter.hasMatch(left);
  bool result = rexSpecialCharacter.hasMatch(left);
  if (result == false) {
    return false;
  }

  return true;
}

bool validateIdCard(String? input) {
  // Kiểm tra chuỗi chỉ chứa các số từ 0-9 và chiều dài bằng 12
  final RegExp regex = RegExp(r'^\d{12}$');

  if (input == null || input.isEmpty) {
    return false; // Consider empty input as invalid
  }

  return regex.hasMatch(input);
}
