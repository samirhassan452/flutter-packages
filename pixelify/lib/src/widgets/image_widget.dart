part of '../base.imports.dart';

class DrawImage<T> extends StatelessWidget {
  final T? src;

  final AssetBundle? bundle;

  /// It will be 1.0 by default if image is not from asset
  final double? scale;
  final Widget Function(BuildContext, Widget, int?, bool)? frameBuilder;

  /// It applied only if image is from network
  final Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final String? semanticLabel;
  final bool excludeFromSemantics;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final bool isAntiAlias;
  final String? package;
  final FilterQuality filterQuality;

  /// It applied only if image is from network
  final Map<String, String>? headers;
  final int? cacheWidth;
  final int? cacheHeight;

  const DrawImage(
    this.src, {
    super.key,
    this.bundle,
    this.scale,
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.package,
    this.filterQuality = FilterQuality.low,
    this.headers,
    this.cacheWidth,
    this.cacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    try {
      switch (imgType) {
        case (true, _, _, _):
          return Image.asset(
            src as String,
            key: key,
            bundle: bundle,
            frameBuilder: frameBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            scale: scale,
            width: width,
            height: height,
            color: color,
            opacity: opacity,
            colorBlendMode: colorBlendMode,
            fit: fit,
            alignment: alignment,
            repeat: repeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection,
            gaplessPlayback: gaplessPlayback,
            isAntiAlias: isAntiAlias,
            package: package,
            filterQuality: filterQuality,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
          );
        case (_, true, _, _):
          return Image.network(
            src as String,
            key: key,
            scale: scale ?? 1.0,
            frameBuilder: frameBuilder,
            loadingBuilder: loadingBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            width: width,
            height: height,
            color: color,
            opacity: opacity,
            colorBlendMode: colorBlendMode,
            fit: fit,
            alignment: alignment,
            repeat: repeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection,
            gaplessPlayback: gaplessPlayback,
            filterQuality: filterQuality,
            isAntiAlias: isAntiAlias,
            headers: headers,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
          );
        case (_, _, true, _):
          return Image.file(
            src as File,
            key: key,
            scale: scale ?? 1.0,
            frameBuilder: frameBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            width: width,
            height: height,
            color: color,
            opacity: opacity,
            colorBlendMode: colorBlendMode,
            fit: fit,
            alignment: alignment,
            repeat: repeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection,
            gaplessPlayback: gaplessPlayback,
            isAntiAlias: isAntiAlias,
            filterQuality: filterQuality,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
          );
        case (_, _, _, true):
          return Image.memory(
            src as Uint8List,
            key: key,
            scale: scale ?? 1.0,
            frameBuilder: frameBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            width: width,
            height: height,
            color: color,
            opacity: opacity,
            colorBlendMode: colorBlendMode,
            fit: fit,
            alignment: alignment,
            repeat: repeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection,
            gaplessPlayback: gaplessPlayback,
            isAntiAlias: isAntiAlias,
            filterQuality: filterQuality,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
          );
        default:
          return Icon(
            Icons.error,
            size: width,
            color: Theme.of(context).colorScheme.error,
          );
      }
    } catch (e) {
      throw FlutterError("Cannot render, wrong Image!");
    }
  }

  (bool, bool, bool, bool) get imgType =>
      (src.isLocalImg, src.isNetworkImg, src.isFileImg, src.isBytesImg);
}
