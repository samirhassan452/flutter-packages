part of '../base.imports.dart';

class Animey extends Abstractor {
  const Animey({super.key}) : super(child: const SizedBox());

  /// For fully customizable use [AnimeyShimmerWidget]
  Animey.shimmer({
    super.key,
    Widget? child,
    Size size = Size.zero,
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(8.0)),
  }) : super(
          child: AnimeyShimmerWidget(
            size: size,
            borderRadius: borderRadius,
            child: child,
          ),
        );
}
