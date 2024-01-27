part of '../base.imports.dart';

class GlowingScrollWidget extends StatelessWidget {
  final AxisDirection axisDirection;
  final Color? glowingColor;
  final Widget child;
  const GlowingScrollWidget({
    super.key,
    this.axisDirection = AxisDirection.down,
    this.glowingColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: GlowingOverscrollIndicator(
        axisDirection: axisDirection,
        color: glowingColor ?? Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}
