<p align="center" style="font-size: 5em;">
🚀 Translator 🚀
</p>

---

A Flutter package which responsible for translation/localization.

## How to install

1. Navigate to the root of you project
2. Create a packages folder
```Shell
mkdir packages
```
3. Copy translator package inside packages folder
4. Update supported locales enum if needed. (Default: ar & en)


## How to update arb

1. Update intl or arb files
2. Navigate to translator package
```Shell
cd packages/translator/
```
3. Update generated app localizations
```Shell
flutter gen-l10n
```

## How to use

1. Setup translator before `runApp()`
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// You can specify initial locale
  /// and also pass [false] to persistLocale if you won't to persist locale
  /// by default [true]
  await TranslatorController.setup();
  // ... Add more logic of you code ...
  runApp(const App());
}
```
2. Wrap MaterialApp with LocalizationBuilder widget
```dart
return LocalizationBuilder(
      builder: (locale, delegates, locales) => MaterialApp(
        // ... Other properties ...
        locale: locale,
        localizationsDelegates: delegates,
        supportedLocales: locales,
        // ... Other properties ...
      ),
    );
```
3. Access translated values by one of the following
```dart
Text(Translator.of(context).[translatedKey]),
Text("translatedKey".tr()),
/// Discover more methods from Translator description
```

## How to change localization
- Set a new locale/langCode
```dart
ElevatedButton(
    onPressed: () async {
        await TranslatorController.setLocale(Locale('langCode'));
        /// OR
        await TranslatorController.setLangCode('langCode');
    },
    child: Text("Change Locale"),
),

/// OR by the helper methods from supported locales

ElevatedButton(
    onPressed: () async {
        await TranslatorController.setLocale(SupportedLocale.switchLocale);
        /// OR
        await TranslatorController.setLangCode(SupportedLocale.switchLangCode);
    },
    child: Text("Change Locale"),
),
```

### `NOTE`
---
```dart
/// If you don't setup translator before [runApp()], 
/// don't worry it will be setuped when wrapping LocalizationBuilder widget to MaterialApp.
```