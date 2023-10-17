import 'package:flutter_riverpod/flutter_riverpod.dart';

class Store<N, I> {
  final dynamic ref;
  final AutoDisposeNotifierProvider atomProvider;

  Store(this.ref, this.atomProvider);

  I get watchItems => ref.watch(atomProvider);
  I get items => ref.read(atomProvider);

  N get notifier => ref.read(atomProvider.notifier);

  // ProviderListenable<N> get select => this.select;
  C select<C>(C Function(dynamic) selector) =>
      ref.watch(atomProvider.select(selector));
}
