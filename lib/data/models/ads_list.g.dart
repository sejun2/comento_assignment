// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdsList _$$_AdsListFromJson(Map<String, dynamic> json) => _$_AdsList(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AdsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: json['links'] as List<dynamic>?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'],
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_AdsListToJson(_$_AdsList instance) =>
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

_$_AdsData _$$_AdsDataFromJson(Map<String, dynamic> json) => _$_AdsData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      contents: json['contents'] as String?,
      img: json['img'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_AdsDataToJson(_$_AdsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'img': instance.img,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
