import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/features/categories/widgets/categories_modal.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_button_controller.g.dart';

@riverpod
class CategoriesButtonController extends _$CategoriesButtonController {
  @override
  void build(BuildContext context) {
    return;
  }

  void onTap() {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (c) => const CategoriesModal(),
    );
  }
}
