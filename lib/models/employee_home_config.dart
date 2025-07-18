class EmployeeHomeConfig {
  final bool isShowBanner;
  final String urlImage;
  final String urlArticle;

  EmployeeHomeConfig({
    required this.isShowBanner,
    required this.urlImage,
    required this.urlArticle,
  });

  factory EmployeeHomeConfig.fromJson(Map<String, dynamic> json) {
    return EmployeeHomeConfig(
      isShowBanner: json['home_staff_is_show_banner']?.toString().toLowerCase() == 'true',
      urlImage: json['home_staff_url_image'] ?? '',
      urlArticle: json['home_staff_url_article'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'home_staff_is_show_banner': isShowBanner.toString(),
      'home_staff_url_image': urlImage,
      'home_staff_url_article': urlArticle,
    };
  }

  @override
  toString() {
    return 'EmployeeHomeConfig{isShowBanner: $isShowBanner, urlImage: $urlImage, urlArticle: $urlArticle}';
  }
}
