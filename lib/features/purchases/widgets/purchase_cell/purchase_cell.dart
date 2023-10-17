import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/date_and_time/utils/time_of_day_extension.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';
import 'package:flutter_grocery_list/features/purchases/models/purchase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PurchaseCell extends ConsumerWidget {
  final Purchase purchase;
  const PurchaseCell({super.key, required this.purchase});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = TimeOfDay.fromDateTime(purchase.date);
    return AppCard(
      onTap: () => context.goNamed(
        "summary",
        pathParameters: {"id": purchase.id},
      ),
      child: Padding(
        padding: const Insets.all(16),
        child: Row(
          children: [
            Text(
              DateFormat('dd-MMMM-yyyy H:ma').format(purchase.date),
            ),
            Text(time.detailedPeriod.name),
            Icon(time.periodIcon)
          ],
        ),
      ),
    );
  }
}
