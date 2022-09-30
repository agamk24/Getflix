import 'package:get/get.dart';
import 'package:getflix/data/reporitory/movie_repository_impl.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => MovieRepositoryImpl());
  }
}
