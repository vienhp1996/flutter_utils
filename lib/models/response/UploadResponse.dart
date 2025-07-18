class UploadResponse {
  String? url;
  int? code;
  String? message;

  UploadResponse({
    this.url,
    this.code,
    this.message,
  });

  factory UploadResponse.fromJson(Map<String, dynamic> json) {
    return UploadResponse(
      url: json['data'][0],
      code: 200,
      message: 'Successfully',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
