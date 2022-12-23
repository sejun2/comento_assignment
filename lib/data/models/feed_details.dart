import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_details.freezed.dart';
part 'feed_details.g.dart';

@freezed
class FeedDetails with _$FeedDetails {
  const factory FeedDetails({
    @JsonKey(name: 'data') FeedDetailData? data,
  }) = _FeedDetails;

  factory FeedDetails.fromJson(Map<String, Object?> json) => _$FeedDetailsFromJson(json);
}

@freezed
class FeedDetailData with _$FeedDetailData {
  const factory FeedDetailData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'contents') String? contents,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'category') FeedDetailCategory? category,
    @JsonKey(name: 'reply') List<FeedDetailReply>? reply,
    @JsonKey(name: 'user') FeedDetailUser? user,
  }) = _FeedDetailData;

  factory FeedDetailData.fromJson(Map<String, Object?> json) => _$FeedDetailDataFromJson(json);
}

@freezed
class FeedDetailUser with _$FeedDetailUser {
  const factory FeedDetailUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _FeedDetailUser;

  factory FeedDetailUser.fromJson(Map<String, Object?> json) => _$FeedDetailUserFromJson(json);
}

@freezed
class FeedDetailReply with _$FeedDetailReply {
  const factory FeedDetailReply({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'parent') int? parent,
    @JsonKey(name: 'contents') String? contents,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'user') FeedDetailUser? user,
  }) = _FeedDetailReply;

  factory FeedDetailReply.fromJson(Map<String, Object?> json) => _$FeedDetailReplyFromJson(json);
}

@freezed
class FeedDetailCategory with _$FeedDetailCategory {
  const factory FeedDetailCategory({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _FeedDetailCategory;

  factory FeedDetailCategory.fromJson(Map<String, Object?> json) => _$FeedDetailCategoryFromJson(json);
}

