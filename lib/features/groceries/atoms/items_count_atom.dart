import 'package:flutter_grocery_list/core/providers/utils/map_provider.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'items_count_atom.g.dart';

@riverpod
class ItemsCountAmountAtom extends _$ItemsCountAmountAtom with MapProvider {
  @override
  Map<String, (GroceryItem, int)> build() {
    return {};
  }

  @override
  String getItemKey((GroceryItem, int) item) {
    return item.$1.name;
  }
}
