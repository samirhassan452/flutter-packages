part of '../base.imports.dart';

sealed class AnimeyType {
  final Duration duration;
  final Duration delay;
  final bool infinite;
  final dynamic Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;
  final dynamic Function(AnimateDoDirection)? onFinish;
  final Curve curve;

  const AnimeyType({
    required this.duration,
    required this.delay,
    required this.infinite,
    required this.controller,
    required this.manualTrigger,
    required this.animate,
    required this.from,
    required this.onFinish,
    required this.curve,
  });
}
