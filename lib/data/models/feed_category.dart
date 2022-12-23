import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_category.freezed.dart';
part 'feed_category.g.dart';

@freezed
class FeedCategory with _$FeedCategory {
  const factory FeedCategory({
    @JsonKey(name: 'category') List<CategoryBean>? category,
  }) = _FeedCategory;

  factory FeedCategory.fromJson(Map<String, Object?> json) => _$FeedCategoryFromJson(json);
}

@freezed
class CategoryBean with _$CategoryBean {
  const factory CategoryBean({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _CategoryBean;

  factory CategoryBean.fromJson(Map<String, Object?> json) => _$CategoryBeanFromJson(json);
}

