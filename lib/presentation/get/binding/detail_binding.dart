import 'package:get/get.dart';
import 'package:getflix/data/reporitory/movie_repository_impl.dart';
import 'package:getflix/domain/usecases/get_detail_usecase.dart';
import 'package:getflix/presentation/get/controller/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetDetailUsecase(Get.find<MovieRepositoryImpl>()));
    Get.lazyPut(() => DetailController(Get.find()));
  }
}
