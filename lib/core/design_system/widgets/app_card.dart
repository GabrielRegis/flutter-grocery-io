import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppCard extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final Function()? onTap;
  final double elevation;
  final double radius;
  final Gradient? gradient;
  final Function()? onLongPress;
  final List<BoxShadow>? shadow;
  const AppCard(
      {super.key,
      this.child,
      this.color,
      this.onTap,
      this.gradient,
      this.onLongPress,
      this.elevation = 1,
      this.shadow,
      this.radius = 12});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 150.ms,
      curve: Curves.easeInOut,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: shadow),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: () {
          HapticFeedback.lightImpact();
          if (onTap != null) {
            onTap!();
          }
        },
        onLongPress: onLongPress,
        child: child,
      ),
    );
  }
}
