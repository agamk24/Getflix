import 'package:get/get.dart';

class ListViewController {
  var crossAxis = 1.obs;

  void listV() => crossAxis.value = 1;
  void gridV() => crossAxis.value = 2;
}
