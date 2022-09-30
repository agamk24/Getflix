import 'dart:async';
import 'package:dio/dio.dart';
import 'package:getflix/app/config/app_exeption.dart';
import 'package:getflix/data/provider/network/api_endpoint.dart';
import 'package:getflix/data/provider/network/api_request_representable.dart';

class APIProvider {
  final _client = setup();

  static Dio setup() {
    Dio dio = Dio();

    dio
      ..options.baseUrl = baseUrl
      ..httpClientAdapter
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          requestBody: true,
          error: true,
        ),
      );

    return dio;
  }

  static final _singleton = APIProvider();

  static APIProvider get instance => _singleton;

  Future request(APIRequestRepresentable request) async {
    try {
      Response response;

      var options = Options(
        validateStatus: (statusCode) => statusCode == 200,
      );
      response = await _client.get(
        request.url,
        queryParameters: request.query,
        options: options,
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        return AppException(
            code: response.statusCode.toString(),
            detail: 'Data Tidak diTemukan',
            message: response.statusMessage);
      }
    } catch (e) {
      rethrow;
    }
  }
}
