part of '../base.imports.dart';

/// You can use one of the following to get the translated value
/// 1. Translator.of(context).{translationKey}
/// 2. Translator.load().{translationKey}
/// 3. {translationKey}.tr()
/// 4. Translator.translate({translationKey})
///
/// Or you can just get the translated value by Locale
/// Translator.localeOf(Locale('langCode')).{translationKey}
abstract final class Translator {
  static String translate(String key) =>
      TranslatorController.localeStrings[key] ?? key;

  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context);
  }

  static AppLocalizations localeOf(Locale locale) {
    return lookupAppLocalizations(locale);
  }

  static AppLocalizations load() {
    return lookupAppLocalizations(TranslatorController.activeLocale);
  }

  static Localizations overrideLocale({
    required BuildContext context,
    Locale? locale,
    List<LocalizationsDelegate<dynamic>>? delegates,
    Widget? child,
  }) {
    return Localizations.override(
      context: context,
      locale: locale,
      delegates: delegates,
      child: child,
    );
  }
}

/// A widget to get the translated value and notify the app for locale changes
class LocalizationBuilder extends StatefulWidget {
  final Widget Function(Locale?, Delegates?, Locales) builder;
  const LocalizationBuilder({super.key, required this.builder});

  @override
  State<LocalizationBuilder> createState() => _LocalizationBuilderState();
}

class _LocalizationBuilderState extends State<LocalizationBuilder> {
  late TranslatorNotifier transManager;

  @override
  void initState() {
    super.initState();
    transManager = TranslatorNotifier();
  }

  @override
  void dispose() {
    transManager
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: transManager,
      builder: (_, __) => widget.builder(
        transManager.locale,
        AppLocalizations.localizationsDelegates,
        AppLocalizations.supportedLocales,
      ),
    );
  }
}
