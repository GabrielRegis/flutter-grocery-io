import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_screen.dart';

class PurchaseSummaryScreen extends StatelessWidget {
  final String purchaseId;
  const PurchaseSummaryScreen({super.key, required this.purchaseId});

  @override
  Widget build(BuildContext context) {
    return const AppScreen(
      body: Column(
        children: [],
      ),
      headerChildren: [],
      navbarTitle: 'Compra',
    );
  }
}
