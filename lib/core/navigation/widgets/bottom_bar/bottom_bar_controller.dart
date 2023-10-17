import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_bar_controller.g.dart';

@riverpod
class BottomBarController extends _$BottomBarController {
  @override
  void build(StatefulNavigationShell navigationShell) {
    return;
  }

  void navigate(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
