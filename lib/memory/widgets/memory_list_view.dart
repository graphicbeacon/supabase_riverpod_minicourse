import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:memories_app/memory/memory.dart';

class MemoryListView extends ConsumerWidget {
  const MemoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memoryNotifier = ref.watch(memoryNotifierProvider);

    return memoryNotifier.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, _) => Center(
        child: Text(err.toString()),
      ),
      data: (data) => MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return MemoryItemView(data: data[index]);
        },
      ),
    );
  }
}
