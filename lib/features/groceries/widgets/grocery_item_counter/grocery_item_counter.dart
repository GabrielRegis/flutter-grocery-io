import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_counter.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/price_tag_label.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_counter/grocery_item_counter_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceryItemCounter extends ConsumerWidget {
  final String itemName;
  final Color? textColor;
  const GroceryItemCounter({super.key, required this.itemName, this.textColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = GroceryItemsStore(ref).select((value) => value[itemName]);

    final controller = ref
        .read((groceryItemCounterControllerProvider.call(itemName)).notifier);
    final count = item?.count ?? 0;
    final price = item?.price ?? 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const Insets.bot(8),
          child: AppCounter(
            onSubtract: controller.onSubtract,
            onAdd: controller.onAdd,
            count: count,
            color: textColor,
          ),
        ),
        PriceTagLabel(
          price: price * count,
          color: textColor,
        ),
      ],
    );
  }
}
