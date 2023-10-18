import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RadioCheck extends StatelessWidget {
  final bool isChecked;
  final Color? color;
  const RadioCheck({super.key, this.isChecked = false, this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: 150.ms,
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      transitionBuilder: (w, a) => ScaleTransition(
        scale: a,
        child: w,
      ),
      child: isChecked
          ? Icon(
              Icons.check_box_rounded,
              color: color,
              key: const Key("checked"),
            )
          : Icon(
              Icons.check_box_outline_blank,
              color: color,
              key: const Key("unchecked"),
            ),
    );
  }
}
