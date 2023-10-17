// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_button_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesButtonControllerHash() =>
    r'72380ee5382ff73c4263cf78fa7fb6011dc2280f';

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

abstract class _$CategoriesButtonController
    extends BuildlessAutoDisposeNotifier<void> {
  late final BuildContext context;

  void build(
    BuildContext context,
  );
}

/// See also [CategoriesButtonController].
@ProviderFor(CategoriesButtonController)
const categoriesButtonControllerProvider = CategoriesButtonControllerFamily();

/// See also [CategoriesButtonController].
class CategoriesButtonControllerFamily extends Family<void> {
  /// See also [CategoriesButtonController].
  const CategoriesButtonControllerFamily();

  /// See also [CategoriesButtonController].
  CategoriesButtonControllerProvider call(
    BuildContext context,
  ) {
    return CategoriesButtonControllerProvider(
      context,
    );
  }

  @override
  CategoriesButtonControllerProvider getProviderOverride(
    covariant CategoriesButtonControllerProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'categoriesButtonControllerProvider';
}

/// See also [CategoriesButtonController].
class CategoriesButtonControllerProvider
    extends AutoDisposeNotifierProviderImpl<CategoriesButtonController, void> {
  /// See also [CategoriesButtonController].
  CategoriesButtonControllerProvider(
    BuildContext context,
  ) : this._internal(
          () => CategoriesButtonController()..context = context,
          from: categoriesButtonControllerProvider,
          name: r'categoriesButtonControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoriesButtonControllerHash,
          dependencies: CategoriesButtonControllerFamily._dependencies,
          allTransitiveDependencies:
              CategoriesButtonControllerFamily._allTransitiveDependencies,
          context: context,
        );

  CategoriesButtonControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  void runNotifierBuild(
    covariant CategoriesButtonController notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(CategoriesButtonController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CategoriesButtonControllerProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CategoriesButtonController, void>
      createElement() {
    return _CategoriesButtonControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoriesButtonControllerProvider &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CategoriesButtonControllerRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _CategoriesButtonControllerProviderElement
    extends AutoDisposeNotifierProviderElement<CategoriesButtonController, void>
    with CategoriesButtonControllerRef {
  _CategoriesButtonControllerProviderElement(super.provider);

  @override
  BuildContext get context =>
      (origin as CategoriesButtonControllerProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
