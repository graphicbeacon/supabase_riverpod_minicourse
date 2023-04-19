import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes_info.freezed.dart';

@freezed
class LikesInfo with _$LikesInfo {
  const factory LikesInfo({
    required int count,
    required bool hasLiked,
  }) = _LikesInfo;
}
