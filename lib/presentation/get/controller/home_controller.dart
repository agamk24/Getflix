// ignore_for_file: unused_field, prefer_final_fields

import 'package:get/get.dart';
import 'package:getflix/domain/entities/result.dart';
import 'package:getflix/domain/usecases/get_list_usecase.dart';

class HomeController extends GetxController {
  HomeController(this._getListUsecase);
  final _crossAxis = 1.obs;
  var _fontSize = 20.obs;
  final GetListUsecase _getListUsecase;
  final _totalPage = 0.obs;
  final _totalResult = 0.obs;
  var _isLoadMore = false;
  int _currentPage = 1;

  var _listResult = <Result>[].obs;

  @override
  void onInit() {
    super.onInit();
    _callApi();
  }

  _callApi() async {
    final newPaging = await _getListUsecase.execute(_currentPage.toString());
    _listResult.assignAll(newPaging.results!);
    _totalPage.value = newPaging.totalPages!;
    _totalResult.value = newPaging.totalResults!;
  }

  loadMore() async {
    final totalResults = _totalResult.value;
    final totalPage = _totalPage.value;
    if (totalResults / totalPage <= _currentPage) return;
    if (_isLoadMore) return;
    _isLoadMore = true;
    _currentPage += 1;
    final newPaging = await _getListUsecase.execute(_currentPage.toString());
    _listResult.addAll(newPaging.results!);
    _totalResult.value = newPaging.totalResults!;
    _isLoadMore = false;
  }

  setView(bool isList) {
    _crossAxis.value = isList ? 1 : 2;
    _fontSize.value = isList ? 20 : 10;
  }

  List<Result> get listData => _listResult;
  int get viewItem => _crossAxis.value;
  int get sizeItem => _fontSize.value;
}
