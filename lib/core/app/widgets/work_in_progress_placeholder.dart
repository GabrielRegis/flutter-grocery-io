import 'package:flutter/widgets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';
import 'package:lottie/lottie.dart';

class WorkInProgressPlaceholder extends StatelessWidget {
  const WorkInProgressPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final (
      colors: _,
      texts: texts,
      customColors: _,
    ) = context.theme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const Insets.bot(16),
          child: Text(
            "Work in progress",
            style: texts.displaySmall,
          ),
        ),
        LottieBuilder.asset(
          "assets/animations/wip.json",
          width: 300,
          height: 300,
        ),
      ],
    );
  }
}
