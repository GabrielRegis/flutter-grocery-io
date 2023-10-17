// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_item_counter_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groceryItemCounterControllerHash() =>
    r'ff51ce6b771887d6dfa8dc1d8267d6d33eb24ec7';

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

abstract class _$GroceryItemCounterController
    extends BuildlessAutoDisposeNotifier<int> {
  late final String itemName;

  int build(
    String itemName,
  );
}

/// See also [GroceryItemCounterController].
@ProviderFor(GroceryItemCounterController)
const groceryItemCounterControllerProvider =
    GroceryItemCounterControllerFamily();

/// See also [GroceryItemCounterController].
class GroceryItemCounterControllerFamily extends Family<int> {
  /// See also [GroceryItemCounterController].
  const GroceryItemCounterControllerFamily();

  /// See also [GroceryItemCounterController].
  GroceryItemCounterControllerProvider call(
    String itemName,
  ) {
    return GroceryItemCounterControllerProvider(
      itemName,
    );
  }

  @override
  GroceryItemCounterControllerProvider getProviderOverride(
    covariant GroceryItemCounterControllerProvider provider,
  ) {
    return call(
      provider.itemName,
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
  String? get name => r'groceryItemCounterControllerProvider';
}

/// See also [GroceryItemCounterController].
class GroceryItemCounterControllerProvider
    extends AutoDisposeNotifierProviderImpl<GroceryItemCounterController, int> {
  /// See also [GroceryItemCounterController].
  GroceryItemCounterControllerProvider(
    String itemName,
  ) : this._internal(
          () => GroceryItemCounterController()..itemName = itemName,
          from: groceryItemCounterControllerProvider,
          name: r'groceryItemCounterControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groceryItemCounterControllerHash,
          dependencies: GroceryItemCounterControllerFamily._dependencies,
          allTransitiveDependencies:
              GroceryItemCounterControllerFamily._allTransitiveDependencies,
          itemName: itemName,
        );

  GroceryItemCounterControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemName,
  }) : super.internal();

  final String itemName;

  @override
  int runNotifierBuild(
    covariant GroceryItemCounterController notifier,
  ) {
    return notifier.build(
      itemName,
    );
  }

  @override
  Override overrideWith(GroceryItemCounterController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GroceryItemCounterControllerProvider._internal(
        () => create()..itemName = itemName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemName: itemName,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GroceryItemCounterController, int>
      createElement() {
    return _GroceryItemCounterControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroceryItemCounterControllerProvider &&
        other.itemName == itemName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroceryItemCounterControllerRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `itemName` of this provider.
  String get itemName;
}

class _GroceryItemCounterControllerProviderElement
    extends AutoDisposeNotifierProviderElement<GroceryItemCounterController,
        int> with GroceryItemCounterControllerRef {
  _GroceryItemCounterControllerProviderElement(super.provider);

  @override
  String get itemName =>
      (origin as GroceryItemCounterControllerProvider).itemName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
