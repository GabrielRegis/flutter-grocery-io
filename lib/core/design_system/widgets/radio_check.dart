import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RadioCheck extends StatelessWidget {
  final bool isChecked;
  const RadioCheck({super.key, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: 300.ms,
      transitionBuilder: (w, a) => FadeTransition(
        opacity: a,
        child: w,
      ),
      child: isChecked
          ? const Icon(
              Icons.check_circle_sharp,
              key: Key("checked"),
            )
          : const Icon(
              Icons.radio_button_off,
              key: Key("unchecked"),
            ),
    );
  }
}
