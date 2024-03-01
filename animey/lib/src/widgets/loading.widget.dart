part of '../base.imports.dart';

class AnimeyLoading extends StatelessWidget {
  /// Indicate which type.
  final Indicator indicatorType;

  /// The color you draw on the shape.
  final List<Color>? colors;
  final Color? backgroundColor;

  /// The stroke width of line.
  final double? strokeWidth;

  /// Applicable to which has cut edge of the shape
  final Color? pathBackgroundColor;

  /// Animation status, true will pause the animation, default is false
  final bool pause;
  const AnimeyLoading({
    super.key,
    required this.indicatorType,
    this.colors,
    this.backgroundColor,
    this.strokeWidth,
    this.pathBackgroundColor,
    this.pause = false,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      indicatorType: indicatorType,
      colors: colors,
      backgroundColor: backgroundColor,
      strokeWidth: strokeWidth,
      pathBackgroundColor: pathBackgroundColor,
      pause: pause,
    );
  }
}
