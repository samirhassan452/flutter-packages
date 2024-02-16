part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UFileFunction {
  UFileFunction._();

  static Uint8List u8ListFromBase64(String base64String) {
    return base64Decode(base64String);
  }

  static String base64FromU8List(Uint8List data) {
    return base64Encode(data);
  }

  static String fileMimeType(String extension) {
    try {
      extension = extension.toLowerCase();
      return extension.isNotEmpty ? MimeType.values.byName(extension).mime : '';
    } catch (_) {
      throw ArgumentError('Cannot get Mime', 'FileFunctions.fileMimeType()');
    }
  }

  static Future<List<int>> fileToBytes(String filePath) async {
    if (filePath.isEmpty) return Future.value(const []);
    final bytes = await File(filePath).readAsBytes();

    "$bytes".successLog();
    return Uint8List.fromList(bytes).toFuture();
  }

  static Future<String> fileToBase64(
    String filePath, {
    String? mimeType,
  }) async {
    if (filePath.isEmpty) return Future.value('');
    final bytes = await fileToBytes(filePath);
    String base64 = base64Encode(bytes);
    if (mimeType != null) {
      final baseData = "data:$mimeType;base64,";
      base64 = baseData + base64;
    }
    return base64.toFuture();
  }
}
