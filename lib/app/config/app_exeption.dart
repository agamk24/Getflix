class AppException implements Exception {
  String? code;
  String? message;
  String? detail;

  AppException({this.code, this.detail, this.message});
}
