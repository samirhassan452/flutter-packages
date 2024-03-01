part of '../base.imports.dart';

class AnimeyShimmerWidget extends StatelessWidget {
  /// accepts a child Widget over which the animation is to be displayed
  final Widget? child;

  /// accepts a Size over which the animation is to be displayed
  final Size size;

  /// accepts a BorderRadius over which the animation is to be displayed
  final BorderRadiusGeometry borderRadius;

  /// accepts a bool which toggles the animation on/off. Default value is true
  final bool enabled;

  /// accepts a Color over which the animation is to be displayed
  final Color backgroundColor;

  /// accepts a parameter of type Color and sets the color of the animation overlay. Default value is Colors.white
  final Color color;

  /// accepts a parameter of type double and sets the Opacity of the color of the animation overlay. Default value is 0.3
  final double colorOpacity;

  /// accepts a Duration that would be the time period of animation. Default value is Duration(seconds: 3)
  final Duration duration;

  /// accepts a Duration that would be the interval between the repeating animation. Default value is Duration(seconds: 0) i.e. no interval
  final Duration interval;

  /// accepts a ShimmerDirection and aligns the animation accordingly. Default value is ShimmerDirection.fromLBRT()
  final ShimmerDirection direction;
  const AnimeyShimmerWidget({
    super.key,
    this.child,
    this.size = Size.zero,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.enabled = true,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.color = Colors.white,
    this.colorOpacity = 0.3,
    this.duration = const Duration(seconds: 3),
    this.interval = const Duration(seconds: 0),
    this.direction = const ShimmerDirection.fromLTRB(),
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(size),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Shimmer(
          enabled: enabled,
          color: color,
          colorOpacity: colorOpacity,
          duration: duration,
          interval: interval,
          direction: direction,
          child: child ?? ColoredBox(color: backgroundColor),
        ),
      ),
    );
  }
}
