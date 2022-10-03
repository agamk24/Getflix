import 'package:get/get.dart';
import 'package:getflix/presentation/get/binding/detail_binding.dart';
import 'package:getflix/presentation/get/binding/home_binding.dart';
import 'package:getflix/presentation/ui/page/detail_movie_page.dart';
import 'package:getflix/presentation/ui/page/home_page.dart';
import 'package:getflix/presentation/ui/page/profile_page.dart';
import 'package:getflix/presentation/ui/routes/route_name.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: RouteName.profilePage,
        page: () => const ProfilePage(),
        transition: Transition.rightToLeft),
    GetPage(
        name: RouteName.detailPage,
        page: () => const DetailMovie(),
        transition: Transition.zoom,
        binding: DetailBinding()),
  ];
}
