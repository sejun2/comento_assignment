import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_list.freezed.dart';
part 'ads_list.g.dart';

@freezed
class AdsList with _$AdsList {
  const factory AdsList({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<AdsData>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'links') List<dynamic>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
    @JsonKey(name: 'to') int? to,
    @JsonKey(name: 'total') int? total,
  }) = _AdsList;

  factory AdsList.fromJson(Map<String, Object?> json) => _$AdsListFromJson(json);
}

@freezed
class AdsData with _$AdsData {
  const factory AdsData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'contents') String? contents,
    @JsonKey(name: 'img') String? img,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _AdsData;

  factory AdsData.fromJson(Map<String, Object?> json) => _$AdsDataFromJson(json);
}

