import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory.freezed.dart';
part 'memory.g.dart';

String _readProfileId(Map json, _) => json['profiles']['id'];
String _readUsername(Map json, _) => json['profiles']['username'];

@freezed
class Memory with _$Memory {
  const factory Memory({
    required int id,
    required String title,
    @JsonKey(name: 'image_id') required String imageId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(readValue: _readProfileId) required String profileId,
    @JsonKey(readValue: _readUsername) required String username,
  }) = _Memory;

  factory Memory.fromJson(Map<String, Object?> json) => _$MemoryFromJson(json);
}
