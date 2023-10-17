import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_screen.dart';
import 'package:flutter_grocery_list/features/purchases/widgets/purchases_list.dart';

class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScreen(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PurchasesList(),
          ),
        ],
      ),
      headerChildren: [],
      navbarTitle: 'Purchases',
    );
  }
}
