// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedList _$$_FeedListFromJson(Map<String, dynamic> json) => _$_FeedList(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FeedData.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => FeedLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_FeedListToJson(_$_FeedList instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_FeedLink _$$_FeedLinkFromJson(Map<String, dynamic> json) => _$_FeedLink(
      url: json['url'] as String?,
      label: json['label'],
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_FeedLinkToJson(_$_FeedLink instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$_FeedData _$$_FeedDataFromJson(Map<String, dynamic> json) => _$_FeedData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      contents: json['contents'] as String?,
      categoryId: json['category_id'] as int?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_FeedDataToJson(_$_FeedData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'category_id': instance.categoryId,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
