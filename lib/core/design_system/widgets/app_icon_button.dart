import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';

class AppIconButton extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final Color? color;
  final double? size;
  final BoxBorder? border;
  final Color? backgroundColor;
  final List<BoxShadow>? shadow;
  const AppIconButton(
      {super.key,
      this.onTap,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.size,
      this.border,
      this.shadow});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      elevation: 0,
      border: border,
      shadow: shadow,
      radius: 8,
      color: backgroundColor,
      onTap: onTap,
      child: Padding(
        padding: const Insets.all(6),
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
