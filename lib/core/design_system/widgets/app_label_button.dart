import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';

class AppLabelButton extends StatelessWidget {
  final String label;
  final bool isDisabled;
  final IconData? prefixIcon;
  final Function()? onTap;
  const AppLabelButton(
      {super.key,
      required this.label,
      this.isDisabled = false,
      this.onTap,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    return SizedBox(
      height: 56,
      child: IgnorePointer(
        ignoring: isDisabled,
        child: AnimatedOpacity(
          duration: 300.ms,
          opacity: isDisabled ? 0.4 : 1,
          child: AppCard(
            onTap: onTap,
            color: colors.secondary,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (prefixIcon != null)
                    Padding(
                      padding: const Insets.right(8),
                      child: Icon(
                        prefixIcon,
                        color: colors.onSecondary,
                      ),
                    ),
                  Text(
                    label,
                    style: texts.labelLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colors.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
