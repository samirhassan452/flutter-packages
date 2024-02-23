part of '../base.imports.dart';

class TranslatorNotifier extends ChangeNotifier {
  late Locale _locale;
  final Map<String, String> _localeStrings;

  /// We must create a singleton instance of this class to be sure when TranslatorController
  /// changes the locale, it will notify all listeners.
  /// because TranslatorController and LocalizatorBuilder widgets are using the same notifier.
  static TranslatorNotifier? _instance;
  TranslatorNotifier._({
    required Locale? locale,
    required Map<String, String>? localeStrings,
  })  : _locale = locale ?? firstSupportedLocale,
        _localeStrings = localeStrings ?? {};
  factory TranslatorNotifier({
    Locale? locale,
    Map<String, String>? localeStrings,
  }) =>
      _instance ??=
          TranslatorNotifier._(locale: locale, localeStrings: localeStrings);

  Locale get locale => _locale;
  Map<String, String> get localeStrings => _localeStrings;

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    await _loadLocaleStrings();
    if (hasListeners) notifyListeners();
  }

  Future<void> _loadLocaleStrings() async {
    // Load translations from ARB files based on the specified locale.
    final String localeName = intl.Intl.canonicalizedLocale(_locale.toString());
    final String fileName = 'intl_$localeName.arb';
    final String path = 'packages/translator/lib/src/l10n/$fileName';

    try {
      final String data = await rootBundle.loadString(path);
      final Map<String, dynamic> decodedData = json.decode(data);

      decodedData.forEach((key, value) {
        if (!key.startsWith('@') && value is String) {
          _localeStrings[key] = value;
        }
      });
    } catch (e) {
      // Fallback to the default locale if the specified locale is not found.
      // _localeStrings = {};
    }
  }

  static Locale get firstSupportedLocale =>
      switch (AppLocalizations.supportedLocales.isNotEmpty) {
        true => AppLocalizations.supportedLocales.first,
        false => const Locale('en'),
      };
}
