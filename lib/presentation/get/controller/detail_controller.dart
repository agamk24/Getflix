import 'package:get/get.dart';
import 'package:getflix/domain/entities/detail.dart';
import 'package:getflix/domain/usecases/get_detail_usecase.dart';

class DetailController extends GetxController {
  DetailController(this._getDetailUsecase);

  final GetDetailUsecase _getDetailUsecase;

  final _detailMovie = Detail().obs;

  @override
  void onInit() {
    super.onInit();
    _callApi();
  }

  _callApi() async {
    _detailMovie.value =
        await _getDetailUsecase.execute(Get.arguments.toString());

    print('data detail ${_detailMovie.value.backdropPath}');
  }

  Detail get detailData => _detailMovie.value;
}
