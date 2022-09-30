import 'package:getflix/app/core/usecase/pram_usecase.dart';
import 'package:getflix/domain/entities/movie.dart';
import 'package:getflix/domain/repository/movie_repository.dart';

class GetListUsecase extends ParamUseCase<Movie, String> {
  final MovieRepository _repo;
  GetListUsecase(this._repo);

  @override
  Future<Movie> execute(params) {
    return _repo.fetchList(int.parse(params));
  }
}
