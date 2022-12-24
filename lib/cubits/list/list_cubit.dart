import 'dart:async';
import 'dart:collection';

import 'package:comento_assignment/cubits/list/list_state.dart';
import 'package:comento_assignment/data/repositories/comento_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/models/ads_list.dart';
import '../../data/models/feed_category.dart';
import '../../data/models/feed_list.dart';


class ListCubit extends Cubit<ListState>{

  final ComentoRepository _comentoRepository = GetIt.I.get<ComentoRepository>(instanceName: 'ComentoRepositoryImpl');

  List<CategoryBean?> filterCategoryList = [];
  FeedOrdering ordering = FeedOrdering.ASC;
  HashMap<CategoryBean, bool> categoryFilterHashMap = HashMap<CategoryBean, bool>();
  bool hideAds = false;

  ListCubit(super.initialState) {
    emit(ListLoading());
    _getFilterCategory().then((value) {
      filterCategoryList = value?.category ?? [];
      filterCategoryList.forEach((element) {
        if(element != null){
          categoryFilterHashMap.putIfAbsent(element, () => true);
        }
      });
      fetchList();
    });
  }

  Future<void> fetchList() async{
    //make categories for request
    final categoryRequest = <CategoryBean>[];
    categoryFilterHashMap.forEach((key, value) {
      if(value == true) categoryRequest.add(key);
    });

    try {
      if(state is ListLoaded){ // 이미 Loaded 상태라면
        final currentState = state as ListLoaded;
        if(!currentState.canLoadMore) return; //더 로드할 수 없다면 종료

        emit(currentState.copyWith(isProcess: true));

        final feedList = await _fetchFeedList(page: currentState.currentFeedPage+1, categories: categoryRequest , ord: ordering.toPlainString());
        final adsList = await _fetchAdsList(page: currentState.currentAdsPage+1);

        emit(ListLoaded(
            feedList: feedList,
            adsList: adsList, feedDataList: [...?currentState.feedDataList], adsDataList: [...?currentState.adsDataList]
        , isProcess: false, ));
      }else{ // Loaded 상태가 아니라면 - loadmore 하는것이 아닌 새롭게 load를 하는경우
        emit(ListLoading());
        final feedList = await _fetchFeedList(page: 1, ord: ordering.toPlainString(), categories: categoryRequest);
        final adsList = await _fetchAdsList(page: 1);

        emit(ListLoaded(
            feedList: feedList,
            adsList: adsList,
            feedDataList: [],
            adsDataList: [], )
        );
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(ListError(errorMessage: e.toString()));
    }
  }

  FutureOr<FeedList?> _fetchFeedList({required int page, String ord = 'asc', required List<CategoryBean> categories, int limit = 10} ) async{
    return await _comentoRepository.getFeedList(page: page, ord: ord, categories: categories, limit: limit);
  }

  FutureOr<AdsList?> _fetchAdsList({required int page, int limit = 4}) async{
    return await _comentoRepository.getAdsList(page: page, limit: limit);
  }

  Future<FeedCategory?> _getFilterCategory() async{
    return await _comentoRepository.getFilterCategory();
  }

  Future<void> requestOrdering(FeedOrdering ordering) async{
    if(this.ordering == ordering) return;
    this.ordering = ordering;
    emit(ListLoading());
    await fetchList();
  }

  Future<void> requestFiltering(HashMap<CategoryBean, bool> map) async{
    emit(ListLoading());
    categoryFilterHashMap = map;
    await fetchList();
  }
  
  /// 광고 가리기/보이기 토글 함수
  void toggleHideAds() {
    hideAds = !hideAds;
    if(state is ListLoaded){
      emit((state as ListLoaded).copyWith(hideAds: hideAds));
    }
  }
}

enum FeedOrdering{
  ASC, DESC;

  String toPlainString() {
    String result = 'asc';

    switch (this) {
      case FeedOrdering.ASC:
        result = 'asc';
        break;
      case FeedOrdering.DESC:
        result = 'desc';
        break;
    }
    return result;
  }
}
