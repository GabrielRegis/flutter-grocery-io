import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'grocery_item_counter_controller.g.dart';

@riverpod
class GroceryItemCounterController extends _$GroceryItemCounterController {
  late GroceryItemsStore groceryItemsStore = GroceryItemsStore(ref);

  @override
  int build(String itemName) {
    return 0;
  }

  void onSubtract() {
    final updatedCount = count - 1;
    if (updatedCount <= 0) {
      groceryItemsStore.notifier.removeItem(item);
      return;
    }
    groceryItemsStore.notifier.updateItem(
      item.copyWith(
        count: updatedCount,
      ),
    );
  }

  void onAdd() {
    final updatedCount = count + 1;
    groceryItemsStore.notifier.updateItem(
      item.copyWith(
        count: updatedCount,
      ),
    );
  }

  GroceryItem get item => groceryItemsStore.items[itemName]!;
  int get count => item.count;
}
