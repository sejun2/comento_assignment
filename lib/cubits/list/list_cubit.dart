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

  /// 서비스에서 제공하는 모든 카테고리 목록 list
  List<CategoryBean?> filterCategoryList = [];

  FeedOrdering ordering = FeedOrdering.ASC;

  /// 카테고리 filter 여부를 저장하는 hashmap
  HashMap<CategoryBean, bool> categoryFilterHashMap = HashMap<CategoryBean, bool>();

  /// 광고 숨김 여부
  bool hideAds = false;

  /// Search할 단어
  String? searchText;

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

  /// 피드, 광고 리스트를 받아오는 함수
  /// 현재 state 가 ListLoaded 라면 이미 데이터를 한번 받아온 상태로 목록을 더 불러오는 로직을 수행한다.
  /// 현재 state 가 ListLoaded 가 아니라면 첫목록을 불러오는 로직을 수행한다.
  Future<void> fetchList() async{
    //make categories for request
    final categoryRequest = <CategoryBean>[];
    categoryFilterHashMap.forEach((key, value) {
      if(value == true) categoryRequest.add(key);
    });

    try {
      if(state is ListLoaded){ // 이미 Loaded 상태라면
        final currentState = state as ListLoaded;
        if(!currentState.canLoadMore) { //더 로드할 수 없다면 종료
          emit(currentState.copyWith());
          return;
        }

        emit(currentState.copyWith(isProcess: true));

        final feedList = await _fetchFeedList(page: currentState.currentFeedPage+1, categories: categoryRequest , ord: ordering.toPlainString());
        final adsList = await _fetchAdsList(page: currentState.currentAdsPage+1);

        emit((state as ListLoaded).copyWith(
          feedList: feedList, adsList: adsList, isProcess: false,
          adsDataList: [...?currentState.adsDataList, ...?adsList?.data],
          feedDataList: [...?currentState.feedDataList, ...?feedList?.data],
          searchText: searchText
        ));
      }else{ // Loaded 상태가 아니라면 - loadmore 하는것이 아닌 새롭게 load를 하는경우
        emit(ListLoading());
        final feedList = await _fetchFeedList(page: 1, ord: ordering.toPlainString(), categories: categoryRequest);
        final adsList = await _fetchAdsList(page: 1);

        emit(ListLoaded(
            feedList: feedList,
            adsList: adsList,
            feedDataList: [...?feedList?.data],
            adsDataList: [...?adsList?.data],
            searchText: searchText,
        )
        );
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(ListError(errorMessage: e.toString()));
    }
  }

  /// 피드리스트를 받아오는 함수
  FutureOr<FeedList?> _fetchFeedList({required int page, String ord = 'asc', required List<CategoryBean> categories, int limit = 10} ) async{
    return await _comentoRepository.getFeedList(page: page, ord: ord, categories: categories, limit: limit);
  }

  /// 광고리스트를 받아오는 함수
  FutureOr<AdsList?> _fetchAdsList({required int page, int limit = 4}) async{
    return await _comentoRepository.getAdsList(page: page, limit: limit);
  }

  /// 서비스에서 제공하는 카테고리 목록을 받아오는 함수
  Future<FeedCategory?> _getFilterCategory() async{
    return await _comentoRepository.getFilterCategory();
  }

  /// Ordering 요청 함수
  Future<void> requestOrdering(FeedOrdering ordering) async{
    if(this.ordering == ordering) return;
    this.ordering = ordering;
    emit(ListLoading());
    await fetchList();
  }

  /// Filtering 요청 함수
  Future<void> requestFiltering(HashMap<CategoryBean, bool> map) async{
    emit(ListLoading());
    categoryFilterHashMap = map;
    await fetchList();
  }
  
  /// 광고 가리기/보이기 토글 함수
  void toggleHideAds() {
    hideAds = !hideAds;
    if(state is ListLoaded){
      emit((state as ListLoaded).copyWith());
    }
  }

  /// 제목 검색하는 함수
  /// TODO 본문, 글쓴이 검색 추가
  void search(String text) {
    searchText = text;

    if(state is ListLoaded) {
      final currentState = (state as ListLoaded);
      emit(currentState.copyWith(searchText: text));
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
