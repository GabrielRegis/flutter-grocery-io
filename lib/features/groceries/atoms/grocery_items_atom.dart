import 'package:flutter_grocery_list/core/local_storage/utils/savable.dart';
import 'package:flutter_grocery_list/core/providers/utils/map_provider.dart';
import 'package:flutter_grocery_list/core/providers/utils/provider_store.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/saved_grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grocery_items_atom.g.dart';

@riverpod
class GroceryItemsAtom extends _$GroceryItemsAtom
    with SavableMapProvider, MapProvider {
  @override
  void clear() {
    state = {};
  }

  @override
  void addItem(GroceryItem item) {
    super.addItem(item);
    SavedItemsStore(ref).notifier.addItem(item);
  }

  @override
  void removeItem(GroceryItem item) {
    super.removeItem(item);
    CheckedItemsStore(ref).notifier.removeItem(item.name);
  }

  @override
  String get key => "groceries";

  @override
  GroceryItem fromJson(Map<String, dynamic> object) {
    return GroceryItem.fromJson(object);
  }

  @override
  String getItemKey(GroceryItem item) {
    return item.name;
  }
}

class GroceryItemsStore
    extends Store<GroceryItemsAtom, Map<String, GroceryItem>> {
  GroceryItemsStore(dynamic ref) : super(ref, groceryItemsAtomProvider);
}
