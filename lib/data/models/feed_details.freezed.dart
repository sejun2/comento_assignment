// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedDetails _$FeedDetailsFromJson(Map<String, dynamic> json) {
  return _FeedDetails.fromJson(json);
}

/// @nodoc
mixin _$FeedDetails {
  @JsonKey(name: 'data')
  FeedDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDetailsCopyWith<FeedDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailsCopyWith<$Res> {
  factory $FeedDetailsCopyWith(
          FeedDetails value, $Res Function(FeedDetails) then) =
      _$FeedDetailsCopyWithImpl<$Res, FeedDetails>;
  @useResult
  $Res call({@JsonKey(name: 'data') FeedDetailData? data});

  $FeedDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedDetailsCopyWithImpl<$Res, $Val extends FeedDetails>
    implements $FeedDetailsCopyWith<$Res> {
  _$FeedDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedDetailsCopyWith<$Res>
    implements $FeedDetailsCopyWith<$Res> {
  factory _$$_FeedDetailsCopyWith(
          _$_FeedDetails value, $Res Function(_$_FeedDetails) then) =
      __$$_FeedDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') FeedDetailData? data});

  @override
  $FeedDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_FeedDetailsCopyWithImpl<$Res>
    extends _$FeedDetailsCopyWithImpl<$Res, _$_FeedDetails>
    implements _$$_FeedDetailsCopyWith<$Res> {
  __$$_FeedDetailsCopyWithImpl(
      _$_FeedDetails _value, $Res Function(_$_FeedDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_FeedDetails(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedDetails implements _FeedDetails {
  const _$_FeedDetails({@JsonKey(name: 'data') this.data});

  factory _$_FeedDetails.fromJson(Map<String, dynamic> json) =>
      _$$_FeedDetailsFromJson(json);

  @override
  @JsonKey(name: 'data')
  final FeedDetailData? data;

  @override
  String toString() {
    return 'FeedDetails(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedDetails &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedDetailsCopyWith<_$_FeedDetails> get copyWith =>
      __$$_FeedDetailsCopyWithImpl<_$_FeedDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedDetailsToJson(
      this,
    );
  }
}

abstract class _FeedDetails implements FeedDetails {
  const factory _FeedDetails(
      {@JsonKey(name: 'data') final FeedDetailData? data}) = _$_FeedDetails;

  factory _FeedDetails.fromJson(Map<String, dynamic> json) =
      _$_FeedDetails.fromJson;

  @override
  @JsonKey(name: 'data')
  FeedDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FeedDetailsCopyWith<_$_FeedDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetailData _$FeedDetailDataFromJson(Map<String, dynamic> json) {
  return _FeedDetailData.fromJson(json);
}

/// @nodoc
mixin _$FeedDetailData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents')
  String? get contents => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  FeedDetailCategory? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply')
  List<FeedDetailReply>? get reply => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  FeedDetailUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDetailDataCopyWith<FeedDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailDataCopyWith<$Res> {
  factory $FeedDetailDataCopyWith(
          FeedDetailData value, $Res Function(FeedDetailData) then) =
      _$FeedDetailDataCopyWithImpl<$Res, FeedDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'contents') String? contents,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'category') FeedDetailCategory? category,
      @JsonKey(name: 'reply') List<FeedDetailReply>? reply,
      @JsonKey(name: 'user') FeedDetailUser? user});

  $FeedDetailCategoryCopyWith<$Res>? get category;
  $FeedDetailUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FeedDetailDataCopyWithImpl<$Res, $Val extends FeedDetailData>
    implements $FeedDetailDataCopyWith<$Res> {
  _$FeedDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? categoryId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? category = freezed,
    Object? reply = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FeedDetailCategory?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<FeedDetailReply>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedDetailUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDetailCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $FeedDetailCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDetailUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FeedDetailUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedDetailDataCopyWith<$Res>
    implements $FeedDetailDataCopyWith<$Res> {
  factory _$$_FeedDetailDataCopyWith(
          _$_FeedDetailData value, $Res Function(_$_FeedDetailData) then) =
      __$$_FeedDetailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'contents') String? contents,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'category') FeedDetailCategory? category,
      @JsonKey(name: 'reply') List<FeedDetailReply>? reply,
      @JsonKey(name: 'user') FeedDetailUser? user});

  @override
  $FeedDetailCategoryCopyWith<$Res>? get category;
  @override
  $FeedDetailUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_FeedDetailDataCopyWithImpl<$Res>
    extends _$FeedDetailDataCopyWithImpl<$Res, _$_FeedDetailData>
    implements _$$_FeedDetailDataCopyWith<$Res> {
  __$$_FeedDetailDataCopyWithImpl(
      _$_FeedDetailData _value, $Res Function(_$_FeedDetailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? categoryId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? category = freezed,
    Object? reply = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_FeedDetailData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FeedDetailCategory?,
      reply: freezed == reply
          ? _value._reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<FeedDetailReply>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedDetailUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedDetailData implements _FeedDetailData {
  const _$_FeedDetailData(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'contents') this.contents,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'reply') final List<FeedDetailReply>? reply,
      @JsonKey(name: 'user') this.user})
      : _reply = reply;

  factory _$_FeedDetailData.fromJson(Map<String, dynamic> json) =>
      _$$_FeedDetailDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'contents')
  final String? contents;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'category')
  final FeedDetailCategory? category;
  final List<FeedDetailReply>? _reply;
  @override
  @JsonKey(name: 'reply')
  List<FeedDetailReply>? get reply {
    final value = _reply;
    if (value == null) return null;
    if (_reply is EqualUnmodifiableListView) return _reply;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user')
  final FeedDetailUser? user;

  @override
  String toString() {
    return 'FeedDetailData(id: $id, title: $title, contents: $contents, categoryId: $categoryId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, reply: $reply, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedDetailData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._reply, _reply) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      contents,
      categoryId,
      userId,
      createdAt,
      updatedAt,
      category,
      const DeepCollectionEquality().hash(_reply),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedDetailDataCopyWith<_$_FeedDetailData> get copyWith =>
      __$$_FeedDetailDataCopyWithImpl<_$_FeedDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedDetailDataToJson(
      this,
    );
  }
}

abstract class _FeedDetailData implements FeedDetailData {
  const factory _FeedDetailData(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'contents') final String? contents,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'category') final FeedDetailCategory? category,
      @JsonKey(name: 'reply') final List<FeedDetailReply>? reply,
      @JsonKey(name: 'user') final FeedDetailUser? user}) = _$_FeedDetailData;

  factory _FeedDetailData.fromJson(Map<String, dynamic> json) =
      _$_FeedDetailData.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'contents')
  String? get contents;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'category')
  FeedDetailCategory? get category;
  @override
  @JsonKey(name: 'reply')
  List<FeedDetailReply>? get reply;
  @override
  @JsonKey(name: 'user')
  FeedDetailUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$_FeedDetailDataCopyWith<_$_FeedDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetailUser _$FeedDetailUserFromJson(Map<String, dynamic> json) {
  return _FeedDetailUser.fromJson(json);
}

/// @nodoc
mixin _$FeedDetailUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDetailUserCopyWith<FeedDetailUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailUserCopyWith<$Res> {
  factory $FeedDetailUserCopyWith(
          FeedDetailUser value, $Res Function(FeedDetailUser) then) =
      _$FeedDetailUserCopyWithImpl<$Res, FeedDetailUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$FeedDetailUserCopyWithImpl<$Res, $Val extends FeedDetailUser>
    implements $FeedDetailUserCopyWith<$Res> {
  _$FeedDetailUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedDetailUserCopyWith<$Res>
    implements $FeedDetailUserCopyWith<$Res> {
  factory _$$_FeedDetailUserCopyWith(
          _$_FeedDetailUser value, $Res Function(_$_FeedDetailUser) then) =
      __$$_FeedDetailUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_FeedDetailUserCopyWithImpl<$Res>
    extends _$FeedDetailUserCopyWithImpl<$Res, _$_FeedDetailUser>
    implements _$$_FeedDetailUserCopyWith<$Res> {
  __$$_FeedDetailUserCopyWithImpl(
      _$_FeedDetailUser _value, $Res Function(_$_FeedDetailUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_FeedDetailUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedDetailUser implements _FeedDetailUser {
  const _$_FeedDetailUser(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_FeedDetailUser.fromJson(Map<String, dynamic> json) =>
      _$$_FeedDetailUserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'FeedDetailUser(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedDetailUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, emailVerifiedAt, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedDetailUserCopyWith<_$_FeedDetailUser> get copyWith =>
      __$$_FeedDetailUserCopyWithImpl<_$_FeedDetailUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedDetailUserToJson(
      this,
    );
  }
}

abstract class _FeedDetailUser implements FeedDetailUser {
  const factory _FeedDetailUser(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$_FeedDetailUser;

  factory _FeedDetailUser.fromJson(Map<String, dynamic> json) =
      _$_FeedDetailUser.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedDetailUserCopyWith<_$_FeedDetailUser> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetailReply _$FeedDetailReplyFromJson(Map<String, dynamic> json) {
  return _FeedDetailReply.fromJson(json);
}

/// @nodoc
mixin _$FeedDetailReply {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  int? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents')
  String? get contents => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  FeedDetailUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDetailReplyCopyWith<FeedDetailReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailReplyCopyWith<$Res> {
  factory $FeedDetailReplyCopyWith(
          FeedDetailReply value, $Res Function(FeedDetailReply) then) =
      _$FeedDetailReplyCopyWithImpl<$Res, FeedDetailReply>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'parent') int? parent,
      @JsonKey(name: 'contents') String? contents,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'user') FeedDetailUser? user});

  $FeedDetailUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FeedDetailReplyCopyWithImpl<$Res, $Val extends FeedDetailReply>
    implements $FeedDetailReplyCopyWith<$Res> {
  _$FeedDetailReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? parent = freezed,
    Object? contents = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedDetailUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDetailUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FeedDetailUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedDetailReplyCopyWith<$Res>
    implements $FeedDetailReplyCopyWith<$Res> {
  factory _$$_FeedDetailReplyCopyWith(
          _$_FeedDetailReply value, $Res Function(_$_FeedDetailReply) then) =
      __$$_FeedDetailReplyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'parent') int? parent,
      @JsonKey(name: 'contents') String? contents,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'user') FeedDetailUser? user});

  @override
  $FeedDetailUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_FeedDetailReplyCopyWithImpl<$Res>
    extends _$FeedDetailReplyCopyWithImpl<$Res, _$_FeedDetailReply>
    implements _$$_FeedDetailReplyCopyWith<$Res> {
  __$$_FeedDetailReplyCopyWithImpl(
      _$_FeedDetailReply _value, $Res Function(_$_FeedDetailReply) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? parent = freezed,
    Object? contents = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_FeedDetailReply(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FeedDetailUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedDetailReply implements _FeedDetailReply {
  const _$_FeedDetailReply(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'parent') this.parent,
      @JsonKey(name: 'contents') this.contents,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'user') this.user});

  factory _$_FeedDetailReply.fromJson(Map<String, dynamic> json) =>
      _$$_FeedDetailReplyFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'parent')
  final int? parent;
  @override
  @JsonKey(name: 'contents')
  final String? contents;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'user')
  final FeedDetailUser? user;

  @override
  String toString() {
    return 'FeedDetailReply(id: $id, userId: $userId, parent: $parent, contents: $contents, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedDetailReply &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, parent, contents, createdAt, updatedAt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedDetailReplyCopyWith<_$_FeedDetailReply> get copyWith =>
      __$$_FeedDetailReplyCopyWithImpl<_$_FeedDetailReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedDetailReplyToJson(
      this,
    );
  }
}

abstract class _FeedDetailReply implements FeedDetailReply {
  const factory _FeedDetailReply(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'parent') final int? parent,
      @JsonKey(name: 'contents') final String? contents,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'user') final FeedDetailUser? user}) = _$_FeedDetailReply;

  factory _FeedDetailReply.fromJson(Map<String, dynamic> json) =
      _$_FeedDetailReply.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'parent')
  int? get parent;
  @override
  @JsonKey(name: 'contents')
  String? get contents;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'user')
  FeedDetailUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$_FeedDetailReplyCopyWith<_$_FeedDetailReply> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetailCategory _$FeedDetailCategoryFromJson(Map<String, dynamic> json) {
  return _FeedDetailCategory.fromJson(json);
}

/// @nodoc
mixin _$FeedDetailCategory {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDetailCategoryCopyWith<FeedDetailCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailCategoryCopyWith<$Res> {
  factory $FeedDetailCategoryCopyWith(
          FeedDetailCategory value, $Res Function(FeedDetailCategory) then) =
      _$FeedDetailCategoryCopyWithImpl<$Res, FeedDetailCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$FeedDetailCategoryCopyWithImpl<$Res, $Val extends FeedDetailCategory>
    implements $FeedDetailCategoryCopyWith<$Res> {
  _$FeedDetailCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedDetailCategoryCopyWith<$Res>
    implements $FeedDetailCategoryCopyWith<$Res> {
  factory _$$_FeedDetailCategoryCopyWith(_$_FeedDetailCategory value,
          $Res Function(_$_FeedDetailCategory) then) =
      __$$_FeedDetailCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_FeedDetailCategoryCopyWithImpl<$Res>
    extends _$FeedDetailCategoryCopyWithImpl<$Res, _$_FeedDetailCategory>
    implements _$$_FeedDetailCategoryCopyWith<$Res> {
  __$$_FeedDetailCategoryCopyWithImpl(
      _$_FeedDetailCategory _value, $Res Function(_$_FeedDetailCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_FeedDetailCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedDetailCategory implements _FeedDetailCategory {
  const _$_FeedDetailCategory(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_FeedDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$$_FeedDetailCategoryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'FeedDetailCategory(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedDetailCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedDetailCategoryCopyWith<_$_FeedDetailCategory> get copyWith =>
      __$$_FeedDetailCategoryCopyWithImpl<_$_FeedDetailCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedDetailCategoryToJson(
      this,
    );
  }
}

abstract class _FeedDetailCategory implements FeedDetailCategory {
  const factory _FeedDetailCategory(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$_FeedDetailCategory;

  factory _FeedDetailCategory.fromJson(Map<String, dynamic> json) =
      _$_FeedDetailCategory.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedDetailCategoryCopyWith<_$_FeedDetailCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
