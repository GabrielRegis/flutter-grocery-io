import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/string/utils/string_extension.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/saved_grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/grocery_item_input/grocery_item_input_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'grocery_suggestion_tag/grocery_suggestion_tag.dart';

class GroceryItemsSuggestions extends ConsumerWidget {
  const GroceryItemsSuggestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(groceryItemInputControllerProvider).toLowerCase();
    final suggestions = SavedItemsStore(ref)
        .watchItems
        .values
        .where((element) => element.name.search(search) && search.isNotEmpty)
        .take(6)
        .toList()
      ..shuffle();
    final conditionalPadding = suggestions.isNotEmpty ? 16.0 : 0.0;

    return Padding(
      padding: EdgeInsets.fromLTRB(16, conditionalPadding, 16, 0),
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: suggestions
            .map(
              (item) => GrocerySuggestionTag(
                item: item,
              ).animate().fade(),
            )
            .toList(),
      ),
    );
  }
}
