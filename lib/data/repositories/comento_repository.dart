import 'dart:async';

import '../models/ads_list.dart';
import '../models/feed_category.dart';
import '../models/feed_details.dart';
import '../models/feed_list.dart';

abstract class ComentoRepository {
  /// 카테고리 정보를 받아오는 함수
  FutureOr<FeedCategory?> getFilterCategory();

  /// Feed 정보를 받아오는 함수
  /// @params [ord] 정렬방식을 나타내며 'asc' - 오름차순, 'desc' - 내림차순 이다. 기본값은 'asc' 오름차순 이다.
  FutureOr<FeedList?> getFeedList({required int page, String ord = 'asc', required List<CategoryBean> categories, required int limit});

  /// 피드 게시글 상세 정보를 받아오는 함수
  /// @params [id] 는 피드의 id 을 나타낸다.
  FutureOr<FeedDetails?> getFeedDetail({required int id});

  /// 광고 정보를 받아오는 함수
  FutureOr<AdsList?> getAdsList({required int page, required int limit});
}