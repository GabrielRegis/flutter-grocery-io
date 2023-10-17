import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/saved_grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'update_grocery_modal_controller.g.dart';

@riverpod
class UpdateGroceryModalController extends _$UpdateGroceryModalController {
  final TextEditingController textEditingController = TextEditingController();
  @override
  void build(GroceryItem item, BuildContext context) {
    return;
  }

  void onSavePressed() {
    if (textEditingController.text.isNotEmpty) {
      final price = double.tryParse(textEditingController.text);
      if (price != null) {
        final newItem = item.copyWith(
          price: price,
        );
        GroceryItemsStore(ref).notifier.updateItem(newItem);
        SavedItemsStore(ref).notifier.updateItem(newItem);
      }
    }
    Navigator.of(context).pop();
  }
}
