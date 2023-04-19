// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikesInfo {
  int get count => throw _privateConstructorUsedError;
  bool get hasLiked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikesInfoCopyWith<LikesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesInfoCopyWith<$Res> {
  factory $LikesInfoCopyWith(LikesInfo value, $Res Function(LikesInfo) then) =
      _$LikesInfoCopyWithImpl<$Res, LikesInfo>;
  @useResult
  $Res call({int count, bool hasLiked});
}

/// @nodoc
class _$LikesInfoCopyWithImpl<$Res, $Val extends LikesInfo>
    implements $LikesInfoCopyWith<$Res> {
  _$LikesInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? hasLiked = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      hasLiked: null == hasLiked
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikesInfoCopyWith<$Res> implements $LikesInfoCopyWith<$Res> {
  factory _$$_LikesInfoCopyWith(
          _$_LikesInfo value, $Res Function(_$_LikesInfo) then) =
      __$$_LikesInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, bool hasLiked});
}

/// @nodoc
class __$$_LikesInfoCopyWithImpl<$Res>
    extends _$LikesInfoCopyWithImpl<$Res, _$_LikesInfo>
    implements _$$_LikesInfoCopyWith<$Res> {
  __$$_LikesInfoCopyWithImpl(
      _$_LikesInfo _value, $Res Function(_$_LikesInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? hasLiked = null,
  }) {
    return _then(_$_LikesInfo(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      hasLiked: null == hasLiked
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LikesInfo implements _LikesInfo {
  const _$_LikesInfo({required this.count, required this.hasLiked});

  @override
  final int count;
  @override
  final bool hasLiked;

  @override
  String toString() {
    return 'LikesInfo(count: $count, hasLiked: $hasLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikesInfo &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.hasLiked, hasLiked) ||
                other.hasLiked == hasLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, hasLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikesInfoCopyWith<_$_LikesInfo> get copyWith =>
      __$$_LikesInfoCopyWithImpl<_$_LikesInfo>(this, _$identity);
}

abstract class _LikesInfo implements LikesInfo {
  const factory _LikesInfo(
      {required final int count, required final bool hasLiked}) = _$_LikesInfo;

  @override
  int get count;
  @override
  bool get hasLiked;
  @override
  @JsonKey(ignore: true)
  _$$_LikesInfoCopyWith<_$_LikesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
