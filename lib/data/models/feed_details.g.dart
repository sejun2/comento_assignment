// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedDetails _$$_FeedDetailsFromJson(Map<String, dynamic> json) =>
    _$_FeedDetails(
      data: json['data'] == null
          ? null
          : FeedDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedDetailsToJson(_$_FeedDetails instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_FeedDetailData _$$_FeedDetailDataFromJson(Map<String, dynamic> json) =>
    _$_FeedDetailData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      contents: json['contents'] as String?,
      categoryId: json['category_id'] as int?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      category: json['category'] == null
          ? null
          : FeedDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      reply: (json['reply'] as List<dynamic>?)
          ?.map((e) => FeedDetailReply.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : FeedDetailUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedDetailDataToJson(_$_FeedDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'category_id': instance.categoryId,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'category': instance.category,
      'reply': instance.reply,
      'user': instance.user,
    };

_$_FeedDetailUser _$$_FeedDetailUserFromJson(Map<String, dynamic> json) =>
    _$_FeedDetailUser(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_FeedDetailUserToJson(_$_FeedDetailUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$_FeedDetailReply _$$_FeedDetailReplyFromJson(Map<String, dynamic> json) =>
    _$_FeedDetailReply(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      parent: json['parent'] as int?,
      contents: json['contents'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : FeedDetailUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedDetailReplyToJson(_$_FeedDetailReply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'parent': instance.parent,
      'contents': instance.contents,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
    };

_$_FeedDetailCategory _$$_FeedDetailCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_FeedDetailCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_FeedDetailCategoryToJson(
        _$_FeedDetailCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
