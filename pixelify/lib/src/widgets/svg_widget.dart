part of '../base.imports.dart';

class DrawSvg<T> extends StatelessWidget {
  final T? src;

  /// It applied only if image is from network
  final Map<String, String>? headers; // network assets only
  final bool matchTextDirection;
  final AssetBundle? bundle;
  final String? package;
  final double? width;
  final double? height;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final bool allowDrawingOutsideViewBox;
  final Widget Function(BuildContext)? placeholderBuilder;
  final String? semanticsLabel;
  final bool excludeFromSemantics;
  final Clip clipBehavior;
  final SvgTheme? theme;
  final ColorFilter? colorFilter;
  //? Deprecated values, but I used color inside colorFilter
  final Color? color;
  // final BlendMode colorBlendMode;
  // final bool cacheColorFilter;

  const DrawSvg(
    this.src, {
    super.key,
    this.headers,
    this.matchTextDirection = false,
    this.bundle,
    this.package,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.placeholderBuilder,
    this.semanticsLabel,
    this.excludeFromSemantics = false,
    this.clipBehavior = Clip.hardEdge,
    this.theme,
    this.colorFilter,
    this.color,
    // this.colorBlendMode = BlendMode.srcIn,
    // this.cacheColorFilter = false,
  });

  @override
  Widget build(BuildContext context) {
    try {
      switch (srcType) {
        case (true, _, _, _):
          return SvgPicture.asset(
            src as String,
            key: key,
            matchTextDirection: matchTextDirection,
            bundle: bundle,
            package: package,
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
            allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
            placeholderBuilder: placeholderBuilder,
            semanticsLabel: semanticsLabel,
            excludeFromSemantics: excludeFromSemantics,
            clipBehavior: clipBehavior,
            theme: theme,
            colorFilter: _colorFilter,
          );
        case (_, true, _, _):
          return SvgPicture.network(
            src as String,
            key: key,
            headers: headers,
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
            matchTextDirection: matchTextDirection,
            allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
            placeholderBuilder: placeholderBuilder,
            colorFilter: _colorFilter,
            semanticsLabel: semanticsLabel,
            excludeFromSemantics: excludeFromSemantics,
            clipBehavior: clipBehavior,
            theme: theme,
          );
        case (_, _, true, _):
          return SvgPicture.file(
            src as File,
            key: key,
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
            matchTextDirection: matchTextDirection,
            allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
            placeholderBuilder: placeholderBuilder,
            colorFilter: _colorFilter,
            semanticsLabel: semanticsLabel,
            excludeFromSemantics: excludeFromSemantics,
            clipBehavior: clipBehavior,
            theme: theme,
          );
        case (_, _, _, true):
          return SvgPicture.memory(
            src as Uint8List,
            key: key,
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
            matchTextDirection: matchTextDirection,
            allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
            placeholderBuilder: placeholderBuilder,
            colorFilter: _colorFilter,
            semanticsLabel: semanticsLabel,
            excludeFromSemantics: excludeFromSemantics,
            clipBehavior: clipBehavior,
            theme: theme,
          );
        default:
          return Icon(
            Icons.error,
            size: width,
            color: Theme.of(context).colorScheme.error,
          );
      }
    } catch (e) {
      throw FlutterError("Cannot render, wrong SVG!");
    }
  }

  ColorFilter? get _colorFilter => switch (colorFilter != null) {
        true => colorFilter,
        false when color != null => ColorFilter.mode(color!, BlendMode.srcIn),
        _ => null,
      };
  (bool, bool, bool, bool) get srcType =>
      (src.isLocalSvg, src.isNetworkSvg, src.isFileSvg, src.isBytesSvg);
}
