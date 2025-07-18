class ActiveAccountResponse {
  String? token;
  Object? userData;
  int? code;
  String? message;

  ActiveAccountResponse({
    this.token,
    this.userData,
    this.code,
    this.message,
  });

  factory ActiveAccountResponse.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      return ActiveAccountResponse(
        code: json['error']['code'],
        message: json['error']['message'],
      );
    }
    return ActiveAccountResponse(
      userData: json['data']['user_info'],
      token: json['data']['access_token'],
      code: 200,
      message: 'Active account Successfully',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['userData'] = userData;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
