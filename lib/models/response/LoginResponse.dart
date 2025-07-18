class LoginResponse {
  String? token;
  dynamic accountInfo;
  dynamic employeeInfo;
  Object? companyInfo;
  int? code;
  String? message;

  LoginResponse({
    this.token,
    this.accountInfo,
    this.employeeInfo,
    this.companyInfo,
    this.code,
    this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      return LoginResponse(
        code: json['error']['code'],
        message: json['error']['message'],
      );
    }
    return LoginResponse(
      token: json['access_token'],
      accountInfo: json['account_info'],
      employeeInfo: json['employee_info'],
      companyInfo: json['companyInfo'],
      code: 200,
      message: 'Login Successfully',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['account_info'] = accountInfo;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
