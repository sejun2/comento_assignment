// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedCategory _$$_FeedCategoryFromJson(Map<String, dynamic> json) =>
    _$_FeedCategory(
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CategoryBean.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeedCategoryToJson(_$_FeedCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

_$_CategoryBean _$$_CategoryBeanFromJson(Map<String, dynamic> json) =>
    _$_CategoryBean(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CategoryBeanToJson(_$_CategoryBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
