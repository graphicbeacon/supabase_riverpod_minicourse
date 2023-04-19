import 'dart:io';

import 'package:memories_app/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'memory_repository.g.dart';

@riverpod
MemoryRepository memoryRepository(MemoryRepositoryRef _) => MemoryRepository();

class MemoryRepository {
  final _client = Supabase.instance.client;

  String get storageUrl => _client.storageUrl;

  RealtimeChannel get memoryChannel => _client.channel('public:memories');

  Future<List<Memory>> getMemories() => _client
      .from('memories')
      .select<List<Map<String, dynamic>>>(
          'id, title, created_at, image_id, profiles (id, username)')
      .order('created_at')
      .then((data) => data.map((json) => Memory.fromJson(json)).toList());

  Future<void> addMemory({
    required String title,
    required File file,
  }) async {
    final profileId = _client.auth.currentSession?.user.id;
    final imageId = file.path.split('/').last;

    if (profileId == null) {
      throw 'Missing profile id';
    }

    await _client.from('memories').insert({
      'title': title,
      'image_id': imageId,
      'profile_id': profileId,
    });

    await _client.storage.from('memories').upload(
          '$profileId/$imageId',
          file,
        );
  }

  Future<void> updateMemory({
    required int id,
    required String title,
  }) async {
    final profileId = _client.auth.currentSession?.user.id;

    await _client
        .from('memories')
        .update({'title': title})
        .eq('id', id)
        .eq('profile_id', profileId);
  }

  Future<void> deleteMemory(Memory data) async {
    final profileId = _client.auth.currentSession?.user.id;
    final imageId = data.imageId;

    await _client.storage.from('memories').remove(['$profileId/$imageId']);

    await _client
        .from('memories')
        .delete()
        .eq('id', data.id)
        .eq('profile_id', profileId);
  }

  Stream<List<Map<String, dynamic>>> get likes =>
      _client.from('likes').stream(primaryKey: ['id']);

  Future<void> addLike(int memoryId) async {
    final profileId = _client.auth.currentSession?.user.id;

    await _client.from('likes').insert({
      'memory_id': memoryId,
      'profile_id': profileId,
    });
  }

  Future<void> removeLike(int memoryId) async {
    final profileId = _client.auth.currentSession?.user.id;

    await _client
        .from('likes')
        .delete()
        .eq('memory_id', memoryId)
        .eq('profile_id', profileId);
  }
}
