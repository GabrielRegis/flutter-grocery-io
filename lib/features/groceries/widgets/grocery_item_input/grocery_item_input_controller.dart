import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/string/utils/string_extension.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/atoms/saved_grocery_items_atom.dart';
import 'package:flutter_grocery_list/features/groceries/models/grocery_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grocery_item_input_controller.g.dart';

@riverpod
class GroceryItemInputController extends _$GroceryItemInputController {
  TextEditingController textEditingController = TextEditingController();
  @override
  String build() {
    return "";
  }

  void onChanged(String text) {
    state = text;
  }

  void clear() {
    state = "";
    textEditingController.clear();
  }

  void onSubmit(String text) {
    if (text.isNotEmpty) {
      final items = SavedItemsStore(ref).items;

      final filteredItems = items.values.where(
        (element) => element.name.search(text),
      );

      GroceryItemsStore(ref).notifier.addItem(
            filteredItems.isNotEmpty
                ? filteredItems.first
                : GroceryItem(
                    name: text,
                    count: 1,
                  ),
          );

      clear();
    }
  }
}
