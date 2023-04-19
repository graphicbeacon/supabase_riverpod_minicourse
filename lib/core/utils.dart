import 'package:flutter/material.dart';
import 'package:memories_app/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'utils.g.dart';

extension BuildContextExt on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showAlert(
    String message,
  ) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 2000),
        ),
      );

  Future<T?> showBottomSheet<T>({
    required Widget child,
  }) =>
      showModalBottomSheet<T>(
        context: this,
        builder: (_) => child,
      );
}

@riverpod
String imageUrl(
  ImageUrlRef ref, {
  required String userId,
  required String filename,
}) {
  final storageUrl = ref.read(memoryRepositoryProvider).storageUrl;
  return '$storageUrl/object/public/memories/$userId/$filename';
}
