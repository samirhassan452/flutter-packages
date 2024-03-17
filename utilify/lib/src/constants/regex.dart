part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class URegex {
  //? Private constructor
  URegex._();

  static final RegExp email = RegExp(
    r"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
  );

  static final RegExp number = RegExp(r"^\d");

  static final RegExp locationLink = RegExp(
    r'^(https?://)(.*)(maps|location|place)(.*)(\b|$)',
    caseSensitive: false,
  );

  static final RegExp search = RegExp(r"^[a-zA-Z0-9ء-ي ]*");

  RegExp password({int min = 8, int? max, String specials = "@\$!%*?&#"}) {
    String pattern =
        '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$specials])([A-Za-z\\d$specials]{$min,${max ?? ''}})\$';
    return RegExp(pattern);
  }

  //!
  static RegExp fullName({int min = 3, int? max}) {
    String pattern = '^[a-zA-Zء-ي ]{$min,${max ?? ''}}\$';
    return RegExp(pattern);
  }

  static RegExp description({int min = 10, int? max}) {
    String pattern =
        '''^(?=.*[a-zA-Zء-ي])[a-zA-Zء-ي\\d!@#\$%^&*()_+\\-=\\[\\]{};':"\\|,.<>\\/؟?؛، ]{$min,${max ?? ''}}\$''';
    return RegExp(pattern);
  }

  static RegExp phoneNumber({String prefix = '05', int length = 8}) {
    String pattern = '^';

    if (prefix.isNotEmpty) {
      pattern += RegExp.escape(prefix);
    }

    pattern += '\\d{$length}';

    return RegExp(pattern);
  }

  static RegExp saudiPhoneNumber() {
    const String pattern =
        r'^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$';
    return RegExp(pattern);
  }

  static RegExp nationalID({String prefix = '1', int length = 9}) {
    String pattern = '^';

    if (prefix.isNotEmpty) {
      pattern += RegExp.escape(prefix);
    }

    pattern += '\\d{$length}';

    return RegExp(pattern);
  }

  static RegExp saudiNationalID({String prefix = '1', int length = 9}) {
    const String pattern = r'^(1|2)(\d{9})$';
    return RegExp(pattern);
  }

  static RegExp iban({String prefix = 'SA', int length = 22}) {
    String pattern = '^';

    if (prefix.isNotEmpty) {
      pattern += RegExp.escape(prefix);
    }

    pattern += '\\d{$length}';

    return RegExp(pattern);
  }
}
