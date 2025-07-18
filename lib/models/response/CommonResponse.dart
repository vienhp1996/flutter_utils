class CommonResponse {
  dynamic data;
  int? code;
  String? message;
  int? totalResult;

  CommonResponse({this.data, this.code, this.message, this.totalResult});

  factory CommonResponse.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      return CommonResponse(
          code: json['error']['code'],
          message: json['error']['message'],
          totalResult: 0,);
    }
    return CommonResponse(
        data: json['data'],
        code: 200,
        message: 'Successfully',
        totalResult: json['total_results'] ?? 0,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
