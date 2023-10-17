// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_item_cell_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groceryItemCellControllerHash() =>
    r'5de92a0eebda8c851ab45aa96cd20ecbfb5ec0ca';

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

abstract class _$GroceryItemCellController
    extends BuildlessAutoDisposeNotifier<void> {
  late final String itemName;
  late final BuildContext context;

  void build(
    String itemName,
    BuildContext context,
  );
}

/// See also [GroceryItemCellController].
@ProviderFor(GroceryItemCellController)
const groceryItemCellControllerProvider = GroceryItemCellControllerFamily();

/// See also [GroceryItemCellController].
class GroceryItemCellControllerFamily extends Family<void> {
  /// See also [GroceryItemCellController].
  const GroceryItemCellControllerFamily();

  /// See also [GroceryItemCellController].
  GroceryItemCellControllerProvider call(
    String itemName,
    BuildContext context,
  ) {
    return GroceryItemCellControllerProvider(
      itemName,
      context,
    );
  }

  @override
  GroceryItemCellControllerProvider getProviderOverride(
    covariant GroceryItemCellControllerProvider provider,
  ) {
    return call(
      provider.itemName,
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
  String? get name => r'groceryItemCellControllerProvider';
}

/// See also [GroceryItemCellController].
class GroceryItemCellControllerProvider
    extends AutoDisposeNotifierProviderImpl<GroceryItemCellController, void> {
  /// See also [GroceryItemCellController].
  GroceryItemCellControllerProvider(
    String itemName,
    BuildContext context,
  ) : this._internal(
          () => GroceryItemCellController()
            ..itemName = itemName
            ..context = context,
          from: groceryItemCellControllerProvider,
          name: r'groceryItemCellControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groceryItemCellControllerHash,
          dependencies: GroceryItemCellControllerFamily._dependencies,
          allTransitiveDependencies:
              GroceryItemCellControllerFamily._allTransitiveDependencies,
          itemName: itemName,
          context: context,
        );

  GroceryItemCellControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemName,
    required this.context,
  }) : super.internal();

  final String itemName;
  final BuildContext context;

  @override
  void runNotifierBuild(
    covariant GroceryItemCellController notifier,
  ) {
    return notifier.build(
      itemName,
      context,
    );
  }

  @override
  Override overrideWith(GroceryItemCellController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GroceryItemCellControllerProvider._internal(
        () => create()
          ..itemName = itemName
          ..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemName: itemName,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GroceryItemCellController, void>
      createElement() {
    return _GroceryItemCellControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroceryItemCellControllerProvider &&
        other.itemName == itemName &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemName.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroceryItemCellControllerRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `itemName` of this provider.
  String get itemName;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _GroceryItemCellControllerProviderElement
    extends AutoDisposeNotifierProviderElement<GroceryItemCellController, void>
    with GroceryItemCellControllerRef {
  _GroceryItemCellControllerProviderElement(super.provider);

  @override
  String get itemName => (origin as GroceryItemCellControllerProvider).itemName;
  @override
  BuildContext get context =>
      (origin as GroceryItemCellControllerProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
