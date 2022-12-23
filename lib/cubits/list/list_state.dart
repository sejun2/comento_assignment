import 'package:flutter/material.dart';

import '../../data/models/ads_list.dart';
import '../../data/models/feed_list.dart';

@immutable
abstract class ListState{}

class ListInitial extends ListState{

}

class ListLoading extends ListState{

}

class ListLoaded extends ListState{
  FeedList? feedList;
  AdsList? adsList;

  List<FeedData>? feedDataList = [];
  List<AdsData>? adsDataList = [];

  int currentFeedPage = 0;
  int feedPageLimit = 0;

  int currentAdsPage = 0;
  int adsPageLimit = 0;

  /// FeedList를 더 로드할 수 있는지 여부
  bool get canLoadMore =>  currentFeedPage < feedPageLimit;

  bool isProcess = false;

  ListLoaded({required this.feedList, this.adsList, this.feedDataList, this.adsDataList, this.isProcess = false}){
    currentFeedPage = feedList?.currentPage ?? 0;
    feedPageLimit = feedList?.lastPage ?? 0;

    currentAdsPage = adsList?.currentPage ?? 0;
    adsPageLimit = adsList?.lastPage ?? 0;

    feedDataList?.addAll(feedList?.data ?? []);
    adsDataList?.addAll(adsList?.data ?? []);
  }

  ListLoaded copyWith({FeedList? feedList, AdsList? adsList, List<FeedData>? feedDataList, List<AdsData>? adsDataList, bool? isProcess,  }){
    return ListLoaded(feedList: feedList ?? this.feedList, adsList: adsList ?? this.adsList, feedDataList: feedDataList ?? this.feedDataList, adsDataList: adsDataList ?? this.adsDataList,
      isProcess: isProcess ?? this.isProcess
    );
  }

}

class ListError extends ListState{
  ListError({this.errorMessage});

  final String? errorMessage;

  @override
  String toString() {
    return errorMessage ?? 'error occurred';
  }
}

