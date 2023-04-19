import 'package:memories_app/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'memory_notifier.g.dart';

@riverpod
class MemoryNotifier extends _$MemoryNotifier {
  @override
  Future<List<Memory>> build() async {
    _initMemoryChannel();
    return ref.read(memoryRepositoryProvider).getMemories();
  }

  void _initMemoryChannel() {
    ref.read(memoryRepositoryProvider).memoryChannel.on(
      RealtimeListenTypes.postgresChanges,
      ChannelFilter(
        event: '*',
        schema: 'public',
        table: 'memories',
      ),
      (payload, [_]) async {
        print(payload);

        if (['INSERT', 'UPDATE', 'DELETE'].contains(payload['eventType'])) {
          state = await AsyncValue.guard(
            () async => ref.read(memoryRepositoryProvider).getMemories(),
          );
        }
      },
    ).subscribe();
  }
}
