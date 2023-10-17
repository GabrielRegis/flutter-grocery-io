import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/price_tag_label.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/checked_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartAmount extends ConsumerWidget {
  const CartAmount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceryItemsStore = GroceryItemsStore(ref);
    final price = CheckedItemsStore(ref).watchItems.fold<double>(
      0,
      (value, b) {
        final item = groceryItemsStore.watchItems[b];
        return value + (item?.totalPrice() ?? 0);
      },
    );
    return PriceTagLabel(
      price: price,
    );
  }
}
