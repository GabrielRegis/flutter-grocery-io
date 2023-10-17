import 'package:flutter_grocery_list/core/local_storage/utils/savable.dart';
import 'package:flutter_grocery_list/core/providers/utils/map_provider.dart';
import 'package:flutter_grocery_list/core/providers/utils/provider_store.dart';
import 'package:flutter_grocery_list/features/purchases/models/purchase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'purchases_atom.g.dart';

@riverpod
class PurchasesAtom extends _$PurchasesAtom
    with MapProvider, SavableMapProvider {
  @override
  String getItemKey(Purchase item) {
    return item.id;
  }

  @override
  Purchase fromJson(Map<String, dynamic> object) {
    return Purchase.fromJson(object);
  }

  @override
  String get key => "purchases";
}

class PurchasesStore extends Store<PurchasesAtom, Map<String, Purchase>> {
  PurchasesStore(dynamic ref) : super(ref, purchasesAtomProvider);
}
