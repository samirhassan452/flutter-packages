part of '../base.imports.dart';

extension StringConversion on String {
  /// Check if text is hard-coded, it's benefit if you need to localize app
  /// in the future
  String get hardcoded => "$this 🧨";

  /// Convert only first character of phrase to UpperCase
  /// and the rest of characters to LowerCase
  /// e.g. hello World -> Hello world
  String toCapitalized() {
    if (trim().isEmpty) return '';
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  /// Convert only first character of each word to UpperCase
  /// e.g. hello world -> Hello World
  String toTitleCase() {
    if (trim().isEmpty) return '';
    return replaceAll(RegExp(' +'), ' ')
        .split(' ')
        .map((str) => str.toCapitalized())
        .join(' ');
  }

  /// Convert only first character of phrase to UpperCase
  /// and put the rest of word as it is
  /// e.g. hello world -> Hello world
  String toPascalCase() {
    if (trim().isEmpty) return '';
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Convert the string to be in camel case format
  /// e.g. hello world -> helloWorld
  String toCamelCase() {
    var words = trim().split(' ').where((word) => word.isNotEmpty).toList();
    if (words.isEmpty) return '';

    var firstWord = words.first.toLowerCase();
    var camelCaseWords = words.sublist(1).map((word) {
      return word.toCapitalized();
    });

    return firstWord + camelCaseWords.join('');
  }

  /// count the number of words in the string.
  /// e.g. Hello World => 2 words
  int wordCount() =>
      split(RegExp(r'\s+')).where((word) => word.isNotEmpty).length;

  /// generates a slug from the string, making it URL-friendly.
  /// A slug typically consists of lowercase alphanumeric characters and hyphens,
  /// and it's commonly used in URLs for better readability
  /// e.g. Hello World! How are you today? => hello-world-how-are-you-today
  String toSlug() => toLowerCase()
      // Remove non-alphanumeric characters (excluding lowercase letters and digits) and replace with hyphens
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'^-|-$'), ''); // Remove leading and trailing hyphens

  /// Truncate long strings, especially useful for displaying previews
  String truncate(int maxLength) =>
      length <= maxLength ? this : '${substring(0, maxLength)}...';

  /// reverse the characters in the string.
  String reverse() => split('').reversed.join();

  /// replace multiple consecutive spaces with a single space.
  String replaceMultipleSpaces() => replaceAll(RegExp(' +'), ' ');

  /// If you are working with languages that use diacritics,
  /// you might consider adding a function to remove them.
  /// e.g. héllò wórld => hello world
  String removeDiacritics() {
    Map<String, String> diacriticMap = {
      'à': 'a',
      'á': 'a',
      'â': 'a',
      'ã': 'a',
      'ä': 'a',
      'å': 'a',
      'è': 'e',
      'é': 'e',
      'ê': 'e',
      'ë': 'e',
      'ì': 'i',
      'í': 'i',
      'î': 'i',
      'ï': 'i',
      'ò': 'o',
      'ó': 'o',
      'ô': 'o',
      'õ': 'o',
      'ö': 'o',
      'ø': 'o',
      'ù': 'u',
      'ú': 'u',
      'û': 'u',
      'ü': 'u',
      'ý': 'y',
      'ÿ': 'y',
      'ñ': 'n',
      'ç': 'c',
      'ß': 'ss',
    };

    return replaceAllMapped(
      RegExp('[àáâãäåèéêëìíîïòóôõöøùúûüýÿñçß]'),
      (match) => diacriticMap[match.group(0)]!,
    );
  }

  /// Convert string to uri
  Uri toUri() {
    try {
      return Uri.tryParse(this)!;
    } catch (e) {
      throw ArgumentError(
        'Assign Value Exception occurred {toUri()} method: $e',
      );
    }
  }
}

extension NullableStringConversion on String? {
  String emptyIfNull() => switch (this) {
        (String? val) when val == null => '',
        _ => this!,
      };
  String notFoundIfEmptyOrNull() => switch (this) {
        (_) when isNullOrEmpty => 'Not Found',
        _ => this!,
      };

  bool get isNullOrEmpty => this == null || (this?.isEmpty ?? true);

  Color toColor() {
    if (this == null) return const Color(0xFF000000);
    var hexString = this!;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
