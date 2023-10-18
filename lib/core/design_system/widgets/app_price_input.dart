import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_row.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';

class AppPriceInput extends StatelessWidget {
  final TextEditingController controller;
  const AppPriceInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final (
      :colors,
      texts: _,
      customColors: _,
    ) = context.theme;

    return PaddingRow(
      mainAxisSize: MainAxisSize.min,
      padding: const Insets.all(8),
      children: [
        const Text("R\$"),
        Expanded(
          child: Padding(
            padding: const Insets.horizontal(8),
            child: Container(
              decoration: BoxDecoration(
                color: colors.background,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  contentPadding: Insets.horizontal(16),
                  border: InputBorder.none,
                ),
                controller: controller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CurrencyTextInputFormatter(
                    symbol: "",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
