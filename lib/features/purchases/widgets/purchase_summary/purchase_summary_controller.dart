import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/purchases/atoms/purchases_atom.dart';
import 'package:flutter_grocery_list/features/purchases/models/purchase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'purchase_summary_controller.g.dart';

@riverpod
class CartSummaryController extends _$CartSummaryController {
  @override
  void build() {
    return;
  }

  void onCompletePressed() {
    final items = GroceryItemsStore(ref).items.values.toList();
    PurchasesStore(ref).notifier.addItem(
          Purchase(date: DateTime.now(), items: items),
        );
    CheckedItemsStore(ref).notifier.clear();
  }
}
