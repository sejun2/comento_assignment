// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedCategory _$FeedCategoryFromJson(Map<String, dynamic> json) {
  return _FeedCategory.fromJson(json);
}

/// @nodoc
mixin _$FeedCategory {
  @JsonKey(name: 'category')
  List<CategoryBean>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCategoryCopyWith<FeedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCategoryCopyWith<$Res> {
  factory $FeedCategoryCopyWith(
          FeedCategory value, $Res Function(FeedCategory) then) =
      _$FeedCategoryCopyWithImpl<$Res, FeedCategory>;
  @useResult
  $Res call({@JsonKey(name: 'category') List<CategoryBean>? category});
}

/// @nodoc
class _$FeedCategoryCopyWithImpl<$Res, $Val extends FeedCategory>
    implements $FeedCategoryCopyWith<$Res> {
  _$FeedCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryBean>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedCategoryCopyWith<$Res>
    implements $FeedCategoryCopyWith<$Res> {
  factory _$$_FeedCategoryCopyWith(
          _$_FeedCategory value, $Res Function(_$_FeedCategory) then) =
      __$$_FeedCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'category') List<CategoryBean>? category});
}

/// @nodoc
class __$$_FeedCategoryCopyWithImpl<$Res>
    extends _$FeedCategoryCopyWithImpl<$Res, _$_FeedCategory>
    implements _$$_FeedCategoryCopyWith<$Res> {
  __$$_FeedCategoryCopyWithImpl(
      _$_FeedCategory _value, $Res Function(_$_FeedCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_FeedCategory(
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryBean>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedCategory implements _FeedCategory {
  const _$_FeedCategory(
      {@JsonKey(name: 'category') final List<CategoryBean>? category})
      : _category = category;

  factory _$_FeedCategory.fromJson(Map<String, dynamic> json) =>
      _$$_FeedCategoryFromJson(json);

  final List<CategoryBean>? _category;
  @override
  @JsonKey(name: 'category')
  List<CategoryBean>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedCategory &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedCategoryCopyWith<_$_FeedCategory> get copyWith =>
      __$$_FeedCategoryCopyWithImpl<_$_FeedCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedCategoryToJson(
      this,
    );
  }
}

abstract class _FeedCategory implements FeedCategory {
  const factory _FeedCategory(
          {@JsonKey(name: 'category') final List<CategoryBean>? category}) =
      _$_FeedCategory;

  factory _FeedCategory.fromJson(Map<String, dynamic> json) =
      _$_FeedCategory.fromJson;

  @override
  @JsonKey(name: 'category')
  List<CategoryBean>? get category;
  @override
  @JsonKey(ignore: true)
  _$$_FeedCategoryCopyWith<_$_FeedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryBean _$CategoryBeanFromJson(Map<String, dynamic> json) {
  return _CategoryBean.fromJson(json);
}

/// @nodoc
mixin _$CategoryBean {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryBeanCopyWith<CategoryBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBeanCopyWith<$Res> {
  factory $CategoryBeanCopyWith(
          CategoryBean value, $Res Function(CategoryBean) then) =
      _$CategoryBeanCopyWithImpl<$Res, CategoryBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CategoryBeanCopyWithImpl<$Res, $Val extends CategoryBean>
    implements $CategoryBeanCopyWith<$Res> {
  _$CategoryBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryBeanCopyWith<$Res>
    implements $CategoryBeanCopyWith<$Res> {
  factory _$$_CategoryBeanCopyWith(
          _$_CategoryBean value, $Res Function(_$_CategoryBean) then) =
      __$$_CategoryBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$_CategoryBeanCopyWithImpl<$Res>
    extends _$CategoryBeanCopyWithImpl<$Res, _$_CategoryBean>
    implements _$$_CategoryBeanCopyWith<$Res> {
  __$$_CategoryBeanCopyWithImpl(
      _$_CategoryBean _value, $Res Function(_$_CategoryBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CategoryBean(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryBean implements _CategoryBean {
  const _$_CategoryBean(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$_CategoryBean.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryBeanFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CategoryBean(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryBean &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryBeanCopyWith<_$_CategoryBean> get copyWith =>
      __$$_CategoryBeanCopyWithImpl<_$_CategoryBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryBeanToJson(
      this,
    );
  }
}

abstract class _CategoryBean implements CategoryBean {
  const factory _CategoryBean(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$_CategoryBean;

  factory _CategoryBean.fromJson(Map<String, dynamic> json) =
      _$_CategoryBean.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryBeanCopyWith<_$_CategoryBean> get copyWith =>
      throw _privateConstructorUsedError;
}
