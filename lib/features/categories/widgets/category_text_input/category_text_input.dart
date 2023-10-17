import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/features/categories/widgets/category_text_input/category_text_input_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryTextInput extends ConsumerWidget {
  const CategoryTextInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(categoryTextInputControllerProvider.notifier);
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      controller: controller.textEditingController,
      onSubmitted: controller.onSubmitted,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        hintText: 'Enter a search term',
      ),
    );
  }
}
