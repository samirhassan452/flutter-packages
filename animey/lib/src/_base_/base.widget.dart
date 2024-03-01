part of '../base.imports.dart';

class Animey extends Abstractor {
  /// For fully customizable shimmer animation use [AnimeyShimmer] widget.
  Animey.shimmer({
    super.key,
    Widget? child,
    Size size = Size.zero,
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(8.0)),
  }) : super(
          child: AnimeyShimmer(
            key: key,
            size: size,
            borderRadius: borderRadius,
            child: child,
          ),
        );

  /// For fully customizable loading animation use [AnimeyLoading] widget.
  Animey.loading({
    super.key,
    Indicator indicatorType = Indicator.ballRotateChase,
    List<Color>? colors,
  }) : super(
          child: AnimeyLoading(
            key: key,
            indicatorType: indicatorType,
            colors: colors,
          ),
        );

  /// For fully customizable fade in animation use [AnimeyFadeIn] widget.
  Animey.fadeIn({
    super.key,
    required Widget child,
    AnimeyType type = const FadeInType(),
  }) : super(
          child: AnimeyFadeIn(
            key: key,
            type: type,
            child: child,
          ),
        );
}
