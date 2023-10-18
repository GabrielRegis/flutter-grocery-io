import 'package:flutter/material.dart';
import 'package:flutter_grocery_list/core/theme/instances/app_colors.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:gradient_borders/gradient_borders.dart';

class AppBorderCard extends StatelessWidget {
  final Widget? child;
  final Function()? onTap;
  final double elevation;
  final double radius;
  final Gradient? gradient;
  final List<BoxShadow>? shadow;
  final Color? color;

  final Function()? onLongPress;
  const AppBorderCard(
      {super.key,
      this.child,
      this.onTap,
      this.gradient,
      this.onLongPress,
      this.shadow,
      this.elevation = 1,
      this.color,
      this.radius = 12});

  @override
  Widget build(BuildContext context) {
    final (
      :colors,
      texts: _,
      customColors: _,
    ) = context.theme;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: GradientBoxBorder(gradient: gradient ?? colors.glassGradient),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: shadow,
        color: color,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        onLongPress: onLongPress,
        child: child,
      ),
    );
  }
}
