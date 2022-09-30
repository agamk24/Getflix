import 'package:get/get.dart';
import 'package:getflix/data/reporitory/movie_repository_impl.dart';
import 'package:getflix/domain/usecases/get_list_usecase.dart';
import 'package:getflix/presentation/get/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetListUsecase(Get.find<MovieRepositoryImpl>()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
