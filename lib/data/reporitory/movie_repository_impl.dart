// ignore_for_file: avoid_print

import 'package:getflix/data/models/detail_model.dart';
import 'package:getflix/data/models/movie_model.dart';
import 'package:getflix/data/provider/network/apis/movie_api.dart';
import 'package:getflix/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  @override
  Future<DetailModel> fetchDetail(int id) async {
    try {
      final response = await MovieApi.getDetail(id).request();

      return DetailModel.fromJson(response);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<MovieModel> fetchList(int page) async {
    try {
      final response = await MovieApi.getList(page).request();

      return MovieModel.fromJson(response);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
