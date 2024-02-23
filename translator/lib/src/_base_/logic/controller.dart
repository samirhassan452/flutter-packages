part of '../base.imports.dart';

final class TranslatorController {
  /// This is the initial locale when starting the app if user specify it.
  static Locale? _initialLocale;
  static late bool _persistLocale;
  static bool _isInitialized = false;

  static late SharedPrefs _sharedPrefs;
  static late TranslatorNotifier _notifier;

  /// The user can change the locale after app started, so this will return current locale.
  static Locale get activeLocale => _notifier.locale;
  static Locale? get initialLocale => _initialLocale;
  static Map<String, String> get localeStrings => _notifier.localeStrings;
  static bool get isInitialized => _isInitialized;

  static Future<void> setup({Locale? locale, bool persistLocale = true}) async {
    _initialLocale = locale;
    _persistLocale = persistLocale;

    await _initInstances();
    _isInitialized = true;

    await _initLocale();
  }

  static Future<void> _initInstances() async {
    _sharedPrefs = SharedPrefs();
    await _sharedPrefs.init();
    _notifier = TranslatorNotifier();
  }

  static Future<void> _initLocale() async {
    final Locale locale = _initialLocale ?? await fetchLocale();
    if (_persistLocale) await setLocale(locale);
  }

  /// Fetch locale from SharedPrefs, if not exist then return system locale.
  static Future<Locale> fetchLocale() async {
    Locale? persistedLocale = await _sharedPrefs.getLocale();
    final systemLocaleStr = await findSystemLocale();
    return Future.value(persistedLocale ?? systemLocaleStr.toLocale);
  }

  static Future<void> setLocale(Locale locale) async =>
      await _setLocale(locale);

  static Future<void> setLangCode(String langCode) async {
    if (langCode.isEmpty) {
      throw Exception("Please specify langcode, it cannot be empty");
    }

    await _setLocale(Locale(langCode));
  }

  static Future<void> _setLocale(Locale locale) async {
    if (_isInitialized == false) {
      throw FlutterError("Please initialize translation firstly");
    } else if (locale.isSupportedLocale() == false) {
      throw Exception("Please specify locale, it not exist in locales list");
    }

    await _sharedPrefs.setLocale(locale);
    await _notifier.setLocale(locale);
  }
}
