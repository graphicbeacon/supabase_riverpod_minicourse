// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Memory _$MemoryFromJson(Map<String, dynamic> json) {
  return _Memory.fromJson(json);
}

/// @nodoc
mixin _$Memory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_id')
  String get imageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readProfileId)
  String get profileId => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readUsername)
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryCopyWith<Memory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCopyWith<$Res> {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) then) =
      _$MemoryCopyWithImpl<$Res, Memory>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'image_id') String imageId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(readValue: _readProfileId) String profileId,
      @JsonKey(readValue: _readUsername) String username});
}

/// @nodoc
class _$MemoryCopyWithImpl<$Res, $Val extends Memory>
    implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageId = null,
    Object? createdAt = null,
    Object? profileId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemoryCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$$_MemoryCopyWith(_$_Memory value, $Res Function(_$_Memory) then) =
      __$$_MemoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'image_id') String imageId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(readValue: _readProfileId) String profileId,
      @JsonKey(readValue: _readUsername) String username});
}

/// @nodoc
class __$$_MemoryCopyWithImpl<$Res>
    extends _$MemoryCopyWithImpl<$Res, _$_Memory>
    implements _$$_MemoryCopyWith<$Res> {
  __$$_MemoryCopyWithImpl(_$_Memory _value, $Res Function(_$_Memory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageId = null,
    Object? createdAt = null,
    Object? profileId = null,
    Object? username = null,
  }) {
    return _then(_$_Memory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Memory implements _Memory {
  const _$_Memory(
      {required this.id,
      required this.title,
      @JsonKey(name: 'image_id') required this.imageId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(readValue: _readProfileId) required this.profileId,
      @JsonKey(readValue: _readUsername) required this.username});

  factory _$_Memory.fromJson(Map<String, dynamic> json) =>
      _$$_MemoryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'image_id')
  final String imageId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(readValue: _readProfileId)
  final String profileId;
  @override
  @JsonKey(readValue: _readUsername)
  final String username;

  @override
  String toString() {
    return 'Memory(id: $id, title: $title, imageId: $imageId, createdAt: $createdAt, profileId: $profileId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Memory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, imageId, createdAt, profileId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoryCopyWith<_$_Memory> get copyWith =>
      __$$_MemoryCopyWithImpl<_$_Memory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoryToJson(
      this,
    );
  }
}

abstract class _Memory implements Memory {
  const factory _Memory(
          {required final int id,
          required final String title,
          @JsonKey(name: 'image_id') required final String imageId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(readValue: _readProfileId) required final String profileId,
          @JsonKey(readValue: _readUsername) required final String username}) =
      _$_Memory;

  factory _Memory.fromJson(Map<String, dynamic> json) = _$_Memory.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'image_id')
  String get imageId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(readValue: _readProfileId)
  String get profileId;
  @override
  @JsonKey(readValue: _readUsername)
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_MemoryCopyWith<_$_Memory> get copyWith =>
      throw _privateConstructorUsedError;
}
