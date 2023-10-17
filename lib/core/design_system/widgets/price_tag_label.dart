import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:intl/intl.dart';

class PriceTagLabel extends StatelessWidget {
  final double price;
  final Color? color;
  const PriceTagLabel({super.key, this.price = 0, this.color});

  @override
  Widget build(BuildContext context) {
    final priceFormatter = NumberFormat("#,##0.00", "en_US");

    final (
      colors: _,
      :texts,
      customColors: _,
    ) = context.theme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "R\$ ",
          style: texts.bodySmall
              ?.copyWith(color: color, fontWeight: FontWeight.w800),
        ),
        Text(
          priceFormatter.format(price),
          style: texts.bodyMedium?.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
