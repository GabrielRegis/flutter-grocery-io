import 'package:flutter/cupertino.dart';
import 'package:flutter_grocery_list/features/categories/atoms/categories_atom.dart';
import 'package:flutter_grocery_list/features/categories/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'category_text_input_controller.g.dart';

@riverpod
class CategoryTextInputController extends _$CategoryTextInputController {
  final TextEditingController textEditingController = TextEditingController();
  @override
  build() {
    return;
  }

  void onSubmitted(String text) {
    ref.read(categoriesAtomProvider.notifier).addCategory(
          Category(name: text),
        );
  }
}
