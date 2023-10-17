import 'package:flutter_grocery_list/core/local_storage/utils/savable.dart';
import 'package:flutter_grocery_list/core/providers/utils/map_provider.dart';
import 'package:flutter_grocery_list/core/providers/utils/provider_store.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_grocery_items_atom.g.dart';

@riverpod
class SavedGroceryItemsAtom extends _$SavedGroceryItemsAtom
    with MapProvider, SavableMapProvider {
  @override
  Map<String, GroceryItem> build() {
    final essentials = GroceryItem.essentials;
    final items = super.build();
    items.addAll(essentials);
    return items;
  }

  @override
  String getItemKey(GroceryItem item) {
    return item.name;
  }

  @override
  GroceryItem fromJson(Map<String, dynamic> object) {
    return GroceryItem.fromJson(object);
  }

  @override
  String get key => "saved_grocery_items";
}

class SavedItemsStore
    extends Store<SavedGroceryItemsAtom, Map<String, GroceryItem>> {
  SavedItemsStore(dynamic ref) : super(ref, savedGroceryItemsAtomProvider);
}
