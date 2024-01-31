part of '../base.imports.dart';

extension IconConversion<T> on T? {
  bool get isSvg => isLocalSvg || isNetworkSvg || isFileSvg || isBytesSvg;
  bool get isImg => isLocalImg || isNetworkImg || isFileImg || isBytesImg;
  bool get isIcon => isNotNull && (this! is IconData);
  bool get isWidget => isNotNull && (this! is Widget);

  bool get isLocalImg =>
      isNotNull && (this! is String) && _isImg && !_isNetwork;
  bool get isNetworkImg =>
      isNotNull && (this! is String) && _isImg && _isNetwork;
  bool get isFileImg => isNotNull && (this! is File);
  bool get isBytesImg => isNotNull && (this! is Uint8List);

  bool get isLocalSvg =>
      isNotNull && (this! is String) && _isSvg && !_isNetwork;
  bool get isNetworkSvg =>
      isNotNull && (this! is String) && _isSvg && _isNetwork;
  bool get isFileSvg => isNotNull && (this! is File);
  bool get isBytesSvg => isNotNull && (this! is Uint8List);

  bool get _isNetwork => (this! as String).contains("http");
  bool get _isSvg => (this! as String).contains(".svg");
  bool get _isImg =>
      (this! as String).contains(".png") ||
      (this! as String).contains(".jpg") ||
      (this! as String).contains(".jpeg") ||
      (this! as String).contains(".gif");
}
