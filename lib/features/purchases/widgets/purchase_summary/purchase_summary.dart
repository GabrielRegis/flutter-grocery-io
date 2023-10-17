import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/safe_area.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_label_button.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_column.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:flutter_grocery_list/features/groceries/widgets/cart_amount.dart';
import 'package:flutter_grocery_list/features/purchases/widgets/purchase_summary/purchase_summary_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartSummary extends ConsumerWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    final controller = ref.read(cartSummaryControllerProvider.notifier);

    return Container(
      key: const Key("container"),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.12),
            blurRadius: 15,
            spreadRadius: 2,
          )
        ],
      ),
      child: Padding(
        key: const Key("Padding"),
        padding: context.safeBottomPadding,
        child: PaddingColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          padding: const Insets.all(16),
          children: [
            Padding(
              padding: const Insets.bot(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: Insets.right(4),
                        child: Icon(Icons.shopping_bag),
                      ),
                      Text(
                        "Total",
                        style: texts.titleMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const RepaintBoundary(
                    child: CartAmount(),
                  )
                ],
              ),
            ),
            AppLabelButton(
              label: 'Checkout',
              prefixIcon: Icons.payment,
              onTap: controller.onCompletePressed,
            )
          ],
        ),
      ),
    );
  }
}
