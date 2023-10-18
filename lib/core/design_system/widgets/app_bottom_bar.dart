import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_grocery_list/core/design_system/utils/insets.dart';
import 'package:flutter_grocery_list/core/design_system/utils/shadow.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/app_card.dart';
import 'package:flutter_grocery_list/core/design_system/widgets/padding_row.dart';
import 'package:flutter_grocery_list/core/theme/utils/theme_utils.dart';

class AppBottomBarItem {
  final IconData icon;
  final String label;

  AppBottomBarItem({required this.icon, required this.label});
}

class AppBottomBar extends StatelessWidget {
  final List<AppBottomBarItem> items;
  final int currentIndex;
  final Function(int)? onTap;
  const AppBottomBar(
      {super.key, required this.items, this.currentIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    final (
      colors: colors,
      texts: texts,
      customColors: _,
    ) = context.theme;
    return SafeArea(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [colors.surface.withOpacity(.6), colors.surface],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            AppBoxShadow.blurred(
              color: Colors.black.withOpacity(.08),
            ),
          ],
        ),
        child: SizedBox(
          width: 200,
          child: PaddingRow(
            padding: const Insets.all(16),
            children: items.map((item) {
              final index = items.indexOf(item);

              return TweenAnimationBuilder(
                tween: Tween(
                  end: index == currentIndex ? 1.0 : 0.0,
                ),
                duration: 150.ms,
                builder: (c, tweenValue, w) {
                  final color =
                      Color.lerp(colors.onSurface, colors.primary, tweenValue);
                  final backgroundColor = Color.lerp(Colors.transparent,
                      colors.scrim.withOpacity(.2), tweenValue);
                  return AppCard(
                    radius: 40,
                    color: backgroundColor,
                    onTap: () => onTap?.call(index),
                    child: PaddingRow(
                      padding: const Insets.all(8),
                      children: [
                        Icon(
                          item.icon,
                          color: color,
                        ),
                        Opacity(
                          opacity: tweenValue,
                          child: Align(
                            alignment: const Alignment(-.2, 0),
                            widthFactor: tweenValue,
                            child: Padding(
                              padding: const Insets.left(4),
                              child: Text(
                                item.label,
                                style: texts.titleSmall?.copyWith(
                                  color: color,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
