class ResponseWithTotal {
  Object? data;
  int? code;
  String? message;
  int? totalResult;

  ResponseWithTotal({this.data, this.code, this.message, this.totalResult});

  factory ResponseWithTotal.fromJson(Map<String, dynamic> json) {
    if (json['error'] != null) {
      return ResponseWithTotal(
        code: json['error']['code'],
        message: json['error']['message'],
      );
    }
    return ResponseWithTotal(
        data: json['data'],
        code: 200,
        message: 'Successfully',
        totalResult: json['total_results'],);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data;
    data['code'] = code;
    data['message'] = message;
    data['total_results'] = totalResult;
    return data;
  }
}
