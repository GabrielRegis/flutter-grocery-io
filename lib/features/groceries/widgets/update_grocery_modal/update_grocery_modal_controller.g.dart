// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_grocery_modal_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateGroceryModalControllerHash() =>
    r'5f1b955f2297bf0aeff1e93df57a89e7f6f36eed';

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

abstract class _$UpdateGroceryModalController
    extends BuildlessAutoDisposeNotifier<void> {
  late final GroceryItem item;
  late final BuildContext context;

  void build(
    GroceryItem item,
    BuildContext context,
  );
}

/// See also [UpdateGroceryModalController].
@ProviderFor(UpdateGroceryModalController)
const updateGroceryModalControllerProvider =
    UpdateGroceryModalControllerFamily();

/// See also [UpdateGroceryModalController].
class UpdateGroceryModalControllerFamily extends Family<void> {
  /// See also [UpdateGroceryModalController].
  const UpdateGroceryModalControllerFamily();

  /// See also [UpdateGroceryModalController].
  UpdateGroceryModalControllerProvider call(
    GroceryItem item,
    BuildContext context,
  ) {
    return UpdateGroceryModalControllerProvider(
      item,
      context,
    );
  }

  @override
  UpdateGroceryModalControllerProvider getProviderOverride(
    covariant UpdateGroceryModalControllerProvider provider,
  ) {
    return call(
      provider.item,
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
  String? get name => r'updateGroceryModalControllerProvider';
}

/// See also [UpdateGroceryModalController].
class UpdateGroceryModalControllerProvider
    extends AutoDisposeNotifierProviderImpl<UpdateGroceryModalController,
        void> {
  /// See also [UpdateGroceryModalController].
  UpdateGroceryModalControllerProvider(
    GroceryItem item,
    BuildContext context,
  ) : this._internal(
          () => UpdateGroceryModalController()
            ..item = item
            ..context = context,
          from: updateGroceryModalControllerProvider,
          name: r'updateGroceryModalControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateGroceryModalControllerHash,
          dependencies: UpdateGroceryModalControllerFamily._dependencies,
          allTransitiveDependencies:
              UpdateGroceryModalControllerFamily._allTransitiveDependencies,
          item: item,
          context: context,
        );

  UpdateGroceryModalControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.item,
    required this.context,
  }) : super.internal();

  final GroceryItem item;
  final BuildContext context;

  @override
  void runNotifierBuild(
    covariant UpdateGroceryModalController notifier,
  ) {
    return notifier.build(
      item,
      context,
    );
  }

  @override
  Override overrideWith(UpdateGroceryModalController Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateGroceryModalControllerProvider._internal(
        () => create()
          ..item = item
          ..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        item: item,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UpdateGroceryModalController, void>
      createElement() {
    return _UpdateGroceryModalControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateGroceryModalControllerProvider &&
        other.item == item &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, item.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateGroceryModalControllerRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `item` of this provider.
  GroceryItem get item;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _UpdateGroceryModalControllerProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateGroceryModalController,
        void> with UpdateGroceryModalControllerRef {
  _UpdateGroceryModalControllerProviderElement(super.provider);

  @override
  GroceryItem get item => (origin as UpdateGroceryModalControllerProvider).item;
  @override
  BuildContext get context =>
      (origin as UpdateGroceryModalControllerProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
