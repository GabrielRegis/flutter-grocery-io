// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_bar_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bottomBarControllerHash() =>
    r'6160531f3108bbfdffeb4bad57e175dc67e1147b';

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

abstract class _$BottomBarController
    extends BuildlessAutoDisposeNotifier<void> {
  late final StatefulNavigationShell navigationShell;

  void build(
    StatefulNavigationShell navigationShell,
  );
}

/// See also [BottomBarController].
@ProviderFor(BottomBarController)
const bottomBarControllerProvider = BottomBarControllerFamily();

/// See also [BottomBarController].
class BottomBarControllerFamily extends Family<void> {
  /// See also [BottomBarController].
  const BottomBarControllerFamily();

  /// See also [BottomBarController].
  BottomBarControllerProvider call(
    StatefulNavigationShell navigationShell,
  ) {
    return BottomBarControllerProvider(
      navigationShell,
    );
  }

  @override
  BottomBarControllerProvider getProviderOverride(
    covariant BottomBarControllerProvider provider,
  ) {
    return call(
      provider.navigationShell,
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
  String? get name => r'bottomBarControllerProvider';
}

/// See also [BottomBarController].
class BottomBarControllerProvider
    extends AutoDisposeNotifierProviderImpl<BottomBarController, void> {
  /// See also [BottomBarController].
  BottomBarControllerProvider(
    StatefulNavigationShell navigationShell,
  ) : this._internal(
          () => BottomBarController()..navigationShell = navigationShell,
          from: bottomBarControllerProvider,
          name: r'bottomBarControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bottomBarControllerHash,
          dependencies: BottomBarControllerFamily._dependencies,
          allTransitiveDependencies:
              BottomBarControllerFamily._allTransitiveDependencies,
          navigationShell: navigationShell,
        );

  BottomBarControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationShell,
  }) : super.internal();

  final StatefulNavigationShell navigationShell;

  @override
  void runNotifierBuild(
    covariant BottomBarController notifier,
  ) {
    return notifier.build(
      navigationShell,
    );
  }

  @override
  Override overrideWith(BottomBarController Function() create) {
    return ProviderOverride(
      origin: this,
      override: BottomBarControllerProvider._internal(
        () => create()..navigationShell = navigationShell,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationShell: navigationShell,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BottomBarController, void>
      createElement() {
    return _BottomBarControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BottomBarControllerProvider &&
        other.navigationShell == navigationShell;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationShell.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BottomBarControllerRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `navigationShell` of this provider.
  StatefulNavigationShell get navigationShell;
}

class _BottomBarControllerProviderElement
    extends AutoDisposeNotifierProviderElement<BottomBarController, void>
    with BottomBarControllerRef {
  _BottomBarControllerProviderElement(super.provider);

  @override
  StatefulNavigationShell get navigationShell =>
      (origin as BottomBarControllerProvider).navigationShell;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
