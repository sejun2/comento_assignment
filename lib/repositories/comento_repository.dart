abstract class ComentoRepository {
  /// 카테고리 정보를 받아오는 함수
  getFilterCategory();

  /// Feed 정보를 받아오는 함수
  /// @params [ord] 정렬방식을 나타내며 'asc' - 오름차순, 'desc' - 내림차순 이다. 기본값은 'asc' 오름차순 이다.
  getFeedList({required int page, String ord = 'asc', required List<int> categories, required int limit});

  /// 피드 게시글 상세 정보를 받아오는 함수
  /// @params [id] 는 피드의 id 을 나타낸다.
  getFeedDetail({required int id});

  /// 광고 정보를 받아오는 함수
  getAdsList({required int page, required int limit});
}