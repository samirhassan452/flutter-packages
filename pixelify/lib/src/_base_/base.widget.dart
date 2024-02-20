part of '../base.imports.dart';

class Pixelify<T> extends Abstractor {
  Pixelify.icon({
    super.key,
    required T icon,
    double? size,
    Color? color,
    String? package,
  }) : super(
          child: switch (icon) {
            (_) when icon.isImg => PixelifyIcon(
                key: key,
                icon: icon,
                size: size,
                color: color,
                package: package,
              ),
            (_) when icon.isSvg => PixelifyIcon.svg(
                key: key,
                icon: icon,
                size: size,
                color: color,
                package: package,
              ),
            (_) when icon.isIcon => PixelifyIcon.icon(
                key: key,
                icon: icon as IconData,
                size: size,
                color: color,
              ),
            _ => Icon(Icons.error, key: key, size: size, color: Colors.red)
          },
        );

  Pixelify.image({
    super.key,
    required T src,
    double? width,
    double? height,
    Color? color,
    String? package,
  }) : super(
          child: switch (src) {
            (_) when src.isImg => PixelifyImage(
                key: key,
                src: src,
                width: width,
                height: height,
                color: color,
                package: package,
              ),
            (_) when src.isSvg => PixelifyImage.svg(
                key: key,
                src: src,
                width: width,
                height: height,
                color: color,
                package: package,
              ),
            _ => Icon(Icons.error, key: key, size: width, color: Colors.red)
          },
        );
}
