import 'dart:async';

import '../models/ads_list.dart';
import '../models/feed_category.dart';
import '../models/feed_details.dart';
import '../models/feed_list.dart';

abstract class ComentoRepository {
  /// 서비스에서 제공하는 카테고리 정보를 받아오는 함수
  FutureOr<FeedCategory?> getFilterCategory();

  /// Feed 정보를 받아오는 함수
  /// [page] 불러올 feed 정보의 페이지 번호 ex) 1, 2
  /// [ord] 정렬방식을 나타내며 'asc' - 오름차순, 'desc' - 내림차순 이다. 기본값은 'asc' 오름차순 이다.
  /// [categories] 불러올 feed 정보중 해당 카테고리의 정보만 받아온다.
  /// [limit] 불러올 feed 정보 개수
  FutureOr<FeedList?> getFeedList({required int page, String ord = 'asc', required List<CategoryBean> categories, required int limit});

  /// 피드 게시글 상세 정보를 받아오는 함수
  /// [id] 는 피드의 id 을 나타낸다.
  FutureOr<FeedDetails?> getFeedDetail({required int id});

  /// 광고 정보를 받아오는 함수
  /// [page] 불러올 ads 정보의 페이지 번호
  /// [limit] 불러올 ads 정보 개수
  FutureOr<AdsList?> getAdsList({required int page, required int limit});
}