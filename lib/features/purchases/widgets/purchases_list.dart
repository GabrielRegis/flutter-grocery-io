import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/features/purchases/atoms/purchases_atom.dart';
import 'package:flutter_grocery_list/features/purchases/models/purchase.dart';
import 'package:flutter_grocery_list/features/purchases/widgets/purchase_cell/purchase_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PurchasesList extends ConsumerWidget {
  const PurchasesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = PurchasesStore(ref);
    store.select<int>((value) => value.length);

    return ImplicitlyAnimatedList(
      items: store.items.values.toList(),
      areItemsTheSame: (Purchase oldItem, Purchase newItem) {
        return oldItem.date == newItem.date;
      },
      itemBuilder: (BuildContext context, Animation<double> animation,
          Purchase item, int i) {
        return PurchaseCell(
          purchase: item,
        );
      },
    );
  }
}
