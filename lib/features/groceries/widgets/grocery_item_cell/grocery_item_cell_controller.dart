import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/update_grocery_modal/update_grocery_modal.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grocery_item_cell_controller.g.dart';

@riverpod
class GroceryItemCellController extends _$GroceryItemCellController {
  late GroceryItemsStore groceryItemsStore = GroceryItemsStore(ref);

  @override
  void build(String itemName, BuildContext context) {
    return;
  }

  void toggleItem() {
    CheckedItemsStore(ref).notifier.toggleItem(item.name);
  }

  void onDismissed() {
    GroceryItemsStore(ref).notifier.removeItem(item);
  }

  void onEditCellPressed() {
    HapticFeedback.mediumImpact();
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      useRootNavigator: true,
      isScrollControlled: true,
      barrierColor: Colors.black.withOpacity(0.3),
      elevation: 2,
      builder: (c) => UpdateGroceryModal(
        item: item,
      ),
    );
  }

  int get count => item.count;

  GroceryItem get item =>
      groceryItemsStore.items[itemName] ?? GroceryItem(name: "");
}
