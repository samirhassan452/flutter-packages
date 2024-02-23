part of '../base.imports.dart';

final class SharedPrefs {
  late String _langCodeKey;
  late SharedPreferences _prefs;

  String get langCodeKey => _langCodeKey;
  SharedPreferences get prefs => _prefs;

  Future<void> init() async {
    _langCodeKey = "langCode";
    _prefs = await SharedPreferences.getInstance();
  }

  Future<Locale> setLocale(Locale locale) async {
    if (AppLocalizations.supportedLocales.contains(locale) == false) {
      throw FlutterError(
        'It seems you are trying to persist locale which not exist in langs list',
      );
    }
    await _prefs.setString(_langCodeKey, locale.languageCode);
    return Future.value(locale);
  }

  Future<Locale?> getLocale() async {
    String? langCode = _prefs.getString(_langCodeKey);
    return Future.value(langCode?.toLocale);
  }

  Future<bool> removeLocale() async {
    await _prefs.remove(_langCodeKey);
    return Future.value(prefs.containsKey(_langCodeKey));
  }

  bool containsLocale() => prefs.containsKey(_langCodeKey);
}
