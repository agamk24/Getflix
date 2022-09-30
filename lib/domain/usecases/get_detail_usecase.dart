import 'package:getflix/app/core/usecase/pram_usecase.dart';
import 'package:getflix/domain/entities/detail.dart';
import 'package:getflix/domain/repository/movie_repository.dart';

class GetDetailUsecase extends ParamUseCase<Detail, String> {
  final MovieRepository _repo;
  GetDetailUsecase(this._repo);

  @override
  Future<Detail> execute(String params) {
    return _repo.fetchDetail(int.parse(params));
  }
}
