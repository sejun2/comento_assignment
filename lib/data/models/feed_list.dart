import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_list.freezed.dart';
part 'feed_list.g.dart';

@freezed
class FeedList with _$FeedList {
  const factory FeedList({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<FeedData>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'links') List<FeedLink>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    @JsonKey(name: 'to') int? to,
    @JsonKey(name: 'total') int? total,
  }) = _FeedList;

  factory FeedList.fromJson(Map<String, Object?> json) => _$FeedListFromJson(json);
}

@freezed
class FeedLink with _$FeedLink {
  const factory FeedLink({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'label') dynamic label,
    @JsonKey(name: 'active') bool? active,
  }) = _FeedLink;

  factory FeedLink.fromJson(Map<String, Object?> json) => _$FeedLinkFromJson(json);
}

@freezed
class FeedData with _$FeedData {
  const factory FeedData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'contents') String? contents,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _FeedData;

  factory FeedData.fromJson(Map<String, Object?> json) => _$FeedDataFromJson(json);
}

