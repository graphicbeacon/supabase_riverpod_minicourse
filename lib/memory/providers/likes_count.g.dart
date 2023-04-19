// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes_count.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likesCountHash() => r'6b7c98f6a57ba057f59beef6d3f414bb5511ebe7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef LikesCountRef = AutoDisposeStreamProviderRef<LikesInfo>;

/// See also [likesCount].
@ProviderFor(likesCount)
const likesCountProvider = LikesCountFamily();

/// See also [likesCount].
class LikesCountFamily extends Family<AsyncValue<LikesInfo>> {
  /// See also [likesCount].
  const LikesCountFamily();

  /// See also [likesCount].
  LikesCountProvider call(
    Memory data,
  ) {
    return LikesCountProvider(
      data,
    );
  }

  @override
  LikesCountProvider getProviderOverride(
    covariant LikesCountProvider provider,
  ) {
    return call(
      provider.data,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'likesCountProvider';
}

/// See also [likesCount].
class LikesCountProvider extends AutoDisposeStreamProvider<LikesInfo> {
  /// See also [likesCount].
  LikesCountProvider(
    this.data,
  ) : super.internal(
          (ref) => likesCount(
            ref,
            data,
          ),
          from: likesCountProvider,
          name: r'likesCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likesCountHash,
          dependencies: LikesCountFamily._dependencies,
          allTransitiveDependencies:
              LikesCountFamily._allTransitiveDependencies,
        );

  final Memory data;

  @override
  bool operator ==(Object other) {
    return other is LikesCountProvider && other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
