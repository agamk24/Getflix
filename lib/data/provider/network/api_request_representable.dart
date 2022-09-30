abstract class APIRequestRepresentable {
  String get url;
  String get endpoint;
  String get path;
  Map<String, String>? get query;
  Future request();
}
