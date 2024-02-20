part of '../base.imports.dart';

class PixelifyImage<T> extends Abstractor {
  /// For more customizations, use [DrawImage] instead
  PixelifyImage({
    super.key,
    required T src,
    double? scale,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    double? width,
    double? height,
    Color? color,
    String? package,
    Map<String, String>? headers,
  }) : super(
          child: DrawImage<T>(
            src,
            key: key,
            scale: scale,
            frameBuilder: frameBuilder,
            loadingBuilder: loadingBuilder,
            errorBuilder: errorBuilder,
            width: width,
            height: height,
            color: color,
            package: package,
            headers: headers,
          ),
        );

  /// For more customizations, use [DrawSvg] instead
  PixelifyImage.svg({
    super.key,
    required T src,
    Map<String, String>? headers,
    String? package,
    double? width,
    double? height,
    Widget Function(BuildContext)? placeholderBuilder,
    ColorFilter? colorFilter,
    Color? color,
  }) : super(
          child: DrawSvg<T>(
            src,
            key: key,
            headers: headers,
            package: package,
            width: width,
            height: height,
            colorFilter: colorFilter,
            color: color,
          ),
        );
}
