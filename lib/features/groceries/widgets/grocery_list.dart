import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_cell/grocery_item_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class GroceryList extends ConsumerWidget {
  final ScrollController? scrollController;
  const GroceryList({super.key, this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = GroceryItemsStore(ref);
    final count = store.select<int>((value) => value.length);

    return AnimatedSwitcher(
      duration: 300.ms,
      child: count == 0
          ? RepaintBoundary(
              child: Container(
                alignment: Alignment.center,
                child: LottieBuilder.asset(
                  "assets/animations/empty.json",
                ),
              ),
            )
          : ImplicitlyAnimatedList(
              physics: const ClampingScrollPhysics(),
              controller: scrollController,
              key: const Key('list'),
              areItemsTheSame: (GroceryItem oldItem, GroceryItem newItem) {
                return oldItem.name == newItem.name;
              },
              clipBehavior: Clip.none,
              insertDuration: const Duration(milliseconds: 400),
              removeDuration: const Duration(milliseconds: 200),
              itemBuilder: (BuildContext context, Animation<double> animation,
                  GroceryItem item, int i) {
                return SizeFadeTransition(
                  sizeFraction: 0.7,
                  curve: Curves.easeInOut,
                  animation: animation,
                  child: Padding(
                    padding: const Insets.bot(16),
                    child: GroceryItemCell(
                      itemName: item.name,
                    ),
                  ),
                );
              },
              removeItemBuilder: (context, animation, oldItem) {
                return FadeTransition(
                  opacity: animation,
                  child: GroceryItemCell(
                    itemName: oldItem.name,
                  ),
                );
              },
              items: store.items.values.toList(),
            ),
    );
  }
}
