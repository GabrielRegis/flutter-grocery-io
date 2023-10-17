import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/saved_grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_input/grocery_item_input_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'grocery_suggestion_tag_controller.g.dart';

@riverpod
class GrocerySuggestionTagController extends _$GrocerySuggestionTagController {
  @override
  void build(GroceryItem item) {
    return;
  }

  void onLongPress() {
    SavedItemsStore(ref).notifier.removeItem(item);
  }

  void onTap() {
    GroceryItemsStore(ref).notifier.addItem(item.copyWith(count: 1));
    ref.read(groceryItemInputControllerProvider.notifier).clear();
  }
}
