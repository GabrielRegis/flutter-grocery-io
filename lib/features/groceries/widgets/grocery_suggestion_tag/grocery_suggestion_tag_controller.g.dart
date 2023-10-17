// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_suggestion_tag_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$grocerySuggestionTagControllerHash() =>
    r'439750997fec6bcd2e95b6c3fefa2519c55110ad';

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

abstract class _$GrocerySuggestionTagController
    extends BuildlessAutoDisposeNotifier<void> {
  late final GroceryItem item;

  void build(
    GroceryItem item,
  );
}

/// See also [GrocerySuggestionTagController].
@ProviderFor(GrocerySuggestionTagController)
const grocerySuggestionTagControllerProvider =
    GrocerySuggestionTagControllerFamily();

/// See also [GrocerySuggestionTagController].
class GrocerySuggestionTagControllerFamily extends Family<void> {
  /// See also [GrocerySuggestionTagController].
  const GrocerySuggestionTagControllerFamily();

  /// See also [GrocerySuggestionTagController].
  GrocerySuggestionTagControllerProvider call(
    GroceryItem item,
  ) {
    return GrocerySuggestionTagControllerProvider(
      item,
    );
  }

  @override
  GrocerySuggestionTagControllerProvider getProviderOverride(
    covariant GrocerySuggestionTagControllerProvider provider,
  ) {
    return call(
      provider.item,
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
  String? get name => r'grocerySuggestionTagControllerProvider';
}

/// See also [GrocerySuggestionTagController].
class GrocerySuggestionTagControllerProvider
    extends AutoDisposeNotifierProviderImpl<GrocerySuggestionTagController,
        void> {
  /// See also [GrocerySuggestionTagController].
  GrocerySuggestionTagControllerProvider(
    GroceryItem item,
  ) : this._internal(
          () => GrocerySuggestionTagController()..item = item,
          from: grocerySuggestionTagControllerProvider,
          name: r'grocerySuggestionTagControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$grocerySuggestionTagControllerHash,
          dependencies: GrocerySuggestionTagControllerFamily._dependencies,
          allTransitiveDependencies:
              GrocerySuggestionTagControllerFamily._allTransitiveDependencies,
          item: item,
        );

  GrocerySuggestionTagControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.item,
  }) : super.internal();

  final GroceryItem item;

  @override
  void runNotifierBuild(
    covariant GrocerySuggestionTagController notifier,
  ) {
    return notifier.build(
      item,
    );
  }

  @override
  Override overrideWith(GrocerySuggestionTagController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GrocerySuggestionTagControllerProvider._internal(
        () => create()..item = item,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        item: item,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GrocerySuggestionTagController, void>
      createElement() {
    return _GrocerySuggestionTagControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GrocerySuggestionTagControllerProvider &&
        other.item == item;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, item.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GrocerySuggestionTagControllerRef
    on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `item` of this provider.
  GroceryItem get item;
}

class _GrocerySuggestionTagControllerProviderElement
    extends AutoDisposeNotifierProviderElement<GrocerySuggestionTagController,
        void> with GrocerySuggestionTagControllerRef {
  _GrocerySuggestionTagControllerProviderElement(super.provider);

  @override
  GroceryItem get item =>
      (origin as GrocerySuggestionTagControllerProvider).item;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
