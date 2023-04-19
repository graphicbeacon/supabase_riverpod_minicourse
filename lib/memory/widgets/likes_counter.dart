import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memories_app/auth/auth.dart';
import 'package:memories_app/memory/memory.dart';

class LikesCounter extends ConsumerWidget {
  const LikesCounter({required this.data, super.key});

  final Memory data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likesCount = ref.watch(likesCountProvider(data));
    final info = likesCount.asData?.value;
    final likes = info?.count ?? 0;
    final user = ref.watch(authUserProvider).asData?.value;

    return SizedBox(
      width: 60,
      child: FilledButton(
        onPressed: user == null || likesCount.isLoading
            ? null
            : () {
                final api = ref.read(memoryRepositoryProvider);
                if (info?.hasLiked == true) {
                  api.removeLike(data.id);
                } else {
                  api.addLike(data.id);
                }
              },
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: MaterialStatePropertyAll(Colors.black45),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              size: 20,
              color: info?.hasLiked == true
                  ? Colors.redAccent
                  : likes > 0
                      ? Colors.white
                      : Colors.white54,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                '$likes',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
