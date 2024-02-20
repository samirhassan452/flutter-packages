part of '../base.imports.dart';

class PixelifyIcon<T> extends Abstractor {
  PixelifyIcon({
    super.key,
    required T icon,
    double? size,
    Color? color,
    String? package,
  }) : super(
          child: DrawImage<T>(
            icon,
            key: key,
            width: size,
            height: size,
            color: color,
            package: package,
          ),
        );

  PixelifyIcon.svg({
    super.key,
    required T icon,
    String? package,
    double? size,
    ColorFilter? colorFilter,
    Color? color,
  }) : super(
          child: DrawSvg<T>(
            icon,
            key: key,
            color: color,
            colorFilter: colorFilter,
            width: size,
            height: size,
            package: package,
          ),
        );

  PixelifyIcon.icon({
    super.key,
    required IconData icon,
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
    String? semanticLabel,
    TextDirection? textDirection,
    bool? applyTextScaling,
  }) : super(
          child: Icon(
            icon,
            key: key,
            size: size,
            fill: fill,
            weight: weight,
            grade: grade,
            opticalSize: opticalSize,
            color: color,
            shadows: shadows,
            semanticLabel: semanticLabel,
            textDirection: textDirection,
            applyTextScaling: applyTextScaling,
          ),
        );
}
