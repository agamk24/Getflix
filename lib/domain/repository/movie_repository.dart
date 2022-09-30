import 'package:getflix/domain/entities/detail.dart';
import 'package:getflix/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<Movie> fetchList(int page);
  Future<Detail> fetchDetail(int id);
}
