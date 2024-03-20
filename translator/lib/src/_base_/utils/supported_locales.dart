part of '../base.imports.dart';

enum SupportedLocale {
  ar,
  en,
  ;

  factory SupportedLocale.byLocale(Locale locale) =>
      SupportedLocale.values.firstWhere(
        (item) => item.locale == locale,
        orElse: () => SupportedLocale.values.first,
      );
  factory SupportedLocale.byLangCode(String langCode) =>
      SupportedLocale.values.firstWhere(
        (item) => item.name == langCode.toLowerCase(),
        orElse: () => SupportedLocale.values.first,
      );

  static SupportedLocale get supportedLocale =>
      SupportedLocale.byLocale(TranslatorController.activeLocale);

  Locale get locale => switch (this) {
        ar => const Locale("ar"),
        en => const Locale("en"),
      };

  static Locale get switchLocale => switch (supportedLocale) {
        ar => SupportedLocale.en.locale,
        en => SupportedLocale.ar.locale,
      };
  static String get switchLangCode => switch (supportedLocale) {
        ar => SupportedLocale.en.locale.languageCode,
        en => SupportedLocale.ar.locale.languageCode,
      };
}
