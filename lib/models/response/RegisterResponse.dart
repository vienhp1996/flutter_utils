class RegisterResponse {
  Object? userData;
  int? code;
  String? message;

  RegisterResponse({
    this.userData,
    this.code,
    this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      return RegisterResponse(
        code: json['error']['code'],
        message: json['error']['message'],
      );
    }
    return RegisterResponse(
      userData: json['data'],
      code: 200,
      message: 'Register Successfully',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userData'] = userData;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
