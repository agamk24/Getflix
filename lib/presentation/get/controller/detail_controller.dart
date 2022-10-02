import 'package:get/get.dart';
import 'package:getflix/domain/entities/detail.dart';
import 'package:getflix/domain/usecases/get_detail_usecase.dart';

class DetailController extends GetxController {
  DetailController(this._getDetailUsecase);
  final GetDetailUsecase _getDetailUsecase;
  int _currentPage = 1;

  var _detailMovie = <Detail>[].obs;

  List<Detail> get detailData => _detailMovie;
}
