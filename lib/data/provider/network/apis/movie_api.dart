import 'package:getflix/data/provider/network/api_endpoint.dart';
import 'package:getflix/data/provider/network/api_provider.dart';
import 'package:getflix/data/provider/network/api_request_representable.dart';

enum MovieType { detail, list }

class MovieApi implements APIRequestRepresentable {
  final MovieType type;
  int? id;
  int? page;

  MovieApi._({this.id, this.page, required this.type});

  MovieApi.getList(int page) : this._(type: MovieType.list, page: page);

  MovieApi.getDetail(int id) : this._(type: MovieType.detail, id: id);

  @override
  String get endpoint {
    if (type == MovieType.detail) {
      return id.toString();
    } else {
      return nowPlaying;
    }
  }

  @override
  String get path => '';

  @override
  Map<String, String>? get query {
    if (type == MovieType.list) {
      return {
        "api_key": apiKey,
        "language": defaultLanguage,
        "page": page.toString()
      };
    } else {
      return null;
    }
  }

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
