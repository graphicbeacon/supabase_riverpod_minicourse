// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Memory _$$_MemoryFromJson(Map<String, dynamic> json) => _$_Memory(
      id: json['id'] as int,
      title: json['title'] as String,
      imageId: json['image_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      profileId: _readProfileId(json, 'profileId') as String,
      username: _readUsername(json, 'username') as String,
    );

Map<String, dynamic> _$$_MemoryToJson(_$_Memory instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_id': instance.imageId,
      'created_at': instance.createdAt.toIso8601String(),
      'profileId': instance.profileId,
      'username': instance.username,
    };
