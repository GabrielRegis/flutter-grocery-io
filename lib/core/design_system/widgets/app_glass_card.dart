import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AppGlassCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Function()? onTap;
  final double elevation;
  final double radius;
  final Gradient? gradient;
  final Gradient? borderGradient;
  final Function()? onLongPress;
  const AppGlassCard(
      {super.key,
      required this.child,
      this.color,
      this.onTap,
      this.gradient,
      this.borderGradient,
      this.onLongPress,
      this.elevation = 1,
      this.radius = 12});

  @override
  Widget build(BuildContext context) {
    final (
      colors: _,
      texts: _,
      customColors: customColors,
    ) = context.theme;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedContainer(
            decoration: BoxDecoration(
              color: color,
              gradient: gradient,
            ),
            duration: 300.ms,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: GradientBoxBorder(
                gradient: borderGradient ?? customColors.glassGradient,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              HapticFeedback.selectionClick();
              if (onTap != null) {
                onTap!();
              }
            },
            onLongPress: onLongPress,
            borderRadius: BorderRadius.circular(radius),
            child: child,
          )
        ],
      ),
    );
  }
}
