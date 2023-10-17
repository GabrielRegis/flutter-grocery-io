import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';

class AppIconButton extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final Color? color;
  final double? size;
  const AppIconButton(
      {super.key, this.onTap, required this.icon, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      elevation: 0,
      color: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const Insets.all(8),
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
