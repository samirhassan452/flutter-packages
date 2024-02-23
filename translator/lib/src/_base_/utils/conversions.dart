part of '../base.imports.dart';

extension StringConversion on String {
  Locale get toLocale {
    try {
      // It can be: en_US or en
      final splittedCode = split('_');
      final langCode = splittedCode.first;
      final locale = Locale(langCode);
      if (AppLocalizations.supportedLocales.contains(locale)) {
        return locale;
      } else {
        throw FlutterError('$this is not supported in supportedLocales');
      }
    } catch (_) {
      throw FlutterError('Invalid lang code: $this');
    }
  }

  bool isSupportedLocale() => AppLocalizations.supportedLocales
      .map((locale) => locale.languageCode)
      .contains(this);

  String tr() => Translator.translate(this);
}

extension LocalizationConversion on Locale {
  bool isSupportedLocale() => AppLocalizations.supportedLocales.contains(this);
}

extension DateTimeConversion on DateTime {
  String get weekdayName {
    intl.DateFormat dateFormat =
        intl.DateFormat('EEEE', Translator.load().localeName);
    return dateFormat.format(this);
  }
}
